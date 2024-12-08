using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Reflection;
using Microsoft.EntityFrameworkCore;

namespace Tests;

public static class Utils
{
    public static void RunFullTest<T>(this DbSet<T> set) where T : class
    {
        set.AssertLoadBasic();
        set.AssertLoadFull();
    }
    
    public static void AssertLoadBasic<T>(this DbSet<T> set) where T : class
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

    public static void AssertLoadFull<T>(this DbSet<T> set) where T : class
    {
        var results = set
            .IncludeAll()
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);
        
        foreach (var result in results)
        {
            AssertPopulatedProperties(result);
        }
    }
    
    public static void AssertRequiredProperties(object obj)
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
    
    public static void AssertPopulatedProperties(object obj)
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

    public static IQueryable<TEntity> IncludeAll<TEntity>(this IQueryable<TEntity> source) where TEntity : class
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