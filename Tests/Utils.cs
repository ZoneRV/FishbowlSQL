using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq.Expressions;
using System.Reflection;
using FishbowlSQL.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using Microsoft.EntityFrameworkCore.Query;
using Microsoft.EntityFrameworkCore.Query.Internal;

namespace Tests;

public static class Utils
{
    public static void AssertRequiredProperties(object obj)
    {
        Type type = obj.GetType();
        var properties = type.GetProperties();
        
        foreach (PropertyInfo propertyInfo in properties)
        {
            // If a property should not be null assert that to be true
            if (Attribute.IsDefined(propertyInfo,
                                    typeof(RequiredAttribute)))
            {
                Assert.True(propertyInfo.GetValue(obj) is not null);
            }
            
            else if (Attribute.IsDefined(propertyInfo, typeof(ForeignKeyAttribute)))
            {
                var att = propertyInfo.GetCustomAttributes(true)
                    .Select(x => x as ForeignKeyAttribute)
                    .First(x => x is not null);

                var idPropertyInfo = properties.FirstOrDefault(x => x.Name.ToLower() == att.Name.ToLower());

                if (idPropertyInfo is not null && idPropertyInfo.GetValue(obj) is not null)
                {
                    Assert.True(propertyInfo.GetValue(obj) is not null);
                }
            }
        }
    }
}