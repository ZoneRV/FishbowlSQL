using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq.Expressions;
using System.Reflection;
using FishbowlSQL.DbContexts;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;

namespace Tests;

public static class Utils
{
    internal static void RunFullTest<TEntity, TSet>
        (this TEntity context, Expression<Func<TEntity, DbSet<TSet>>> navigationPropertyPath) 
        where TEntity : FishbowlContext 
        where TSet : class
    {
        var set = navigationPropertyPath.GetPropertyAccess().GetValue(context) as DbSet<TSet>;
        
        Assert.NotNull(set, "DB set not selected correctly in test.");

        set.AssertLoadBasic();
        set.AssertLoadFull(context);
    }
    
    internal static void AssertLoadBasic<T>(this DbSet<T> set) where T : class
    {
        var results = set
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);
        
        foreach (var result in results)
        {
            AssertRequiredProperties(result);
        }
    }

    internal static void AssertLoadFull<T>(this DbSet<T> set, FishbowlContext context) where T : class
    {
        var results = set
            .IncludeAll()
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);
        
        foreach (var result in results)
        {
            AssertNavigationalProperties(result);
            //AssertCollectionProperties(result, context); TODO: Finish test
        }
    }
    
    internal static void AssertRequiredProperties(object obj)
    {
        Type type = obj.GetType();
        var properties = type.GetProperties();
        
        foreach (PropertyInfo propertyInfo in properties)
        {
            bool isRequired = Attribute.IsDefined(propertyInfo, typeof(RequiredAttribute)) || Attribute.IsDefined(propertyInfo, typeof(KeyAttribute));
            bool isNotParent = !Attribute.IsDefined(propertyInfo, typeof(ForeignKeyAttribute));
            //bool isNotNullable = System.Nullable.GetUnderlyingType(propertyInfo.PropertyType) != null;
            
            if ( isRequired && isNotParent )
            {
                Assert.True(propertyInfo.GetValue(obj) is not null, $"{propertyInfo.Name} should not be null on {type.Name}");
            }
        }
    }
    
    internal static void AssertNavigationalProperties(object obj)
    {
        Type type = obj.GetType();
        var properties = type.GetProperties();
        
        foreach (PropertyInfo propertyInfo in properties)
        {
            if (Attribute.IsDefined(propertyInfo, typeof(ForeignKeyAttribute)))
            {
                var att = propertyInfo.GetCustomAttributes(true)
                    .Select(x => x as ForeignKeyAttribute)
                    .First(x => x is not null);

                var idPropertyInfo = properties.FirstOrDefault(x => x.Name.ToLower() == att.Name.ToLower());

                if (idPropertyInfo is not null && idPropertyInfo.GetValue(obj) is not null)
                {
                    Assert.True(propertyInfo.GetValue(obj) is not null, $"{idPropertyInfo.Name} has a value so {propertyInfo.Name} should not be null on {type.Name}");
                }
            }
        }
    }

    internal static void AssertCollectionProperties<T>(object obj, FishbowlContext context) where T : class
    {
        throw new NotImplementedException();
        
        Type type = obj.GetType();
        var properties = type.GetProperties();
        
        foreach (PropertyInfo propertyInfo in properties)
        {
            if (!propertyInfo.PropertyType.IsGenericType || propertyInfo.PropertyType.GetGenericTypeDefinition() != typeof(ICollection<>))
                continue;
            
            Type collectionGeneric = propertyInfo.PropertyType.GenericTypeArguments.First();

            PropertyInfo? dbSetPropInfo = context.GetType()
                                .GetProperties()
                                .FirstOrDefault(x => 
                                    x.PropertyType.IsGenericType && 
                                    x.PropertyType.GetGenericTypeDefinition() == typeof(DbSet<>) && 
                                    x.PropertyType.GenericTypeArguments.Any(t => t == collectionGeneric));
            
            Assert.NotNull(dbSetPropInfo);

            var dbSet = (DbSet<T>) dbSetPropInfo.GetValue(context, null);
            
            //dbSet.Select(x => dbSetPropInfo.PropertyType.GetProperties().First(x => Attribute.IsDefined(x, typeof(KeyAttribute)))).Where()
            
            Assert.True(true);
        }
    }

    internal static IQueryable<TEntity> IncludeAll<TEntity>(this IQueryable<TEntity> source) where TEntity : class
    {
        var type = typeof(TEntity);
        
        var navigationProperties
            = type.GetProperties().ToList();
            
        navigationProperties = navigationProperties
            .Where(p => 
                       Attribute.IsDefined(p, typeof(ForeignKeyAttribute)) ||
                       (p.PropertyType.IsGenericType && p.PropertyType.GetGenericTypeDefinition() == typeof(ICollection<>)))
            .ToList();
        
        foreach (var navigationProperty in navigationProperties)
        {
            source = source.Include(navigationProperty.Name);
        }

        return source;
    }
}