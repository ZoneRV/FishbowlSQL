using System.Configuration;
using FishbowlSQL.DbContexts;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;

namespace Tests;

public class FishbowlContextTests : IDisposable
{
    private readonly string sqlStringFileLocation = "./MySqlString.txt";
    private FishbowlContext _fishbowlContext;
    
    [SetUp]
    public void SetUp()
    {
        if (!File.Exists(sqlStringFileLocation))
            throw new FileNotFoundException("Add ./MySqlString.txt to your file system and add a connection string");

        string? connectionVariable = File.ReadAllText(sqlStringFileLocation);

        if (string.IsNullOrEmpty(connectionVariable) || string.IsNullOrWhiteSpace(connectionVariable))
        {
            throw new ArgumentNullException(connectionVariable);
        }
        
        _fishbowlContext = new FishbowlContext(connectionVariable);
    }

    public void Dispose()
    {
        _fishbowlContext.Dispose();
    }

    [Test]
    public void LoadAccount()
    {
        var results = _fishbowlContext.Account
                                     .Include(e => e.AccountType)
                                     .Take(10)
                                     .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }
    
    [Test]
    public void LoadAccountType()
    {
        var results = _fishbowlContext.AccountType
            .Take(10)
                                     .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }

    [Test]
    public void LoadAsAccount()
    {
        var results = _fishbowlContext.AsAccount
                                     .Include(e => e.AsAccountType)
                                     .Take(10)
                                     .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }
    
    [Test]
    public void LoadAsAccountType()
    {
        var results = _fishbowlContext.AsAccountType
            .Take(10)
                                     .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }
    
    [Test]
    public void LoadCarrier()
    {
        var results = _fishbowlContext.Carrier
            .Take(10)
                                     .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }
    
    [Test]
    public void LoadCarrierService()
    {
        var results = _fishbowlContext.Carrierservice
            .Include(e => e.Carrier)
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }
    
    [Test]
    public void LoadCurrency()
    {
        var results = _fishbowlContext.Currency
            .Include(e => e.LastChangedUser)
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }

    [Test]
    public void LoadCustomer()
    {
        var results = _fishbowlContext.Customer
            .Include(x => x.CarrierService)
            .Include(x => x.Currency)
            .Include(x => x.Account)
            .Include(x => x.DefaultCarrier)
            .Include(x => x.DefaultPaymentTerms)
            .Include(x => x.DefaultPriority)
            .Include(x => x.Parent)
            .Include(x => x.QBClass)
            .Include(x => x.DefaultShipTerms)
            .Include(x => x.IssuableStatus)
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }

    [Test]
    public void LoadIssuableStatus()
    {
        var results = _fishbowlContext.IssuableStatus
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }

    [Test]
    public void LoadOrderType()
    {
        var results = _fishbowlContext.OrderType
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }

    [Test]
    public void LoadPaymentTerms()
    {
        var results = _fishbowlContext.PaymentTerms
            .Include(e => e.PaymentTermsType)
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }

    [Test]
    public void LoadPaymentTermsTypes()
    {
        var results = _fishbowlContext.PaymentTermsType
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }

    [Test]
    public void LoadPriority()
    {
        var results = _fishbowlContext.Priority
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }

    [Test]
    public void LoadQbClass()
    {
        var results = _fishbowlContext.QbClass
            .Include(e => e.Parent)
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }

    [Test]
    public void LoadShipTerms()
    {
        var results = _fishbowlContext.ShipTerms
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }

    [Test]
    public void LoadSysUser()
    {
        var results = _fishbowlContext.SysUser
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }

    [Test]
    public void LoadTaxRate()
    {
        var results = _fishbowlContext.TaxRate
            .Include(e => e.OrderType)
            .Include(e => e.TaxAccount)
            .Include(e => e.Vendor)
            .Include(e => e.TaxRateType)
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }

    [Test]
    public void LoadTaxRateType()
    {
        var results = _fishbowlContext.TaxRateType
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }

    [Test]
    public void LoadVendor()
    {
        var results = _fishbowlContext.Vendor
            .Include(e => e.Account)
            .Include(e => e.Carrier)
            .Include(e => e.Currency)
            .Include(e => e.PaymentTerms)
            .Include(e => e.ShipTerms)
            .Include(e => e.VendorStatus)
            .Include(e => e.TaxRate)
            .Include(e => e.CarrierService)
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }

    [Test]
    public void LoadVendorStatus()
    {
        var results = _fishbowlContext.VendorStatus
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }
}