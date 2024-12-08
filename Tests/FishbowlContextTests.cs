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
    public void LoadBom()
    {
        var results = _fishbowlContext.Bom
            .Include(e => e.AutoCreateType)
            .Include(e => e.DefaultCalCategory)
            .Include(e => e.QbClass)
            .Include(e => e.User)
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }
    
    [Test]
    public void LoadBomAutoCreateType()
    {
        var results = _fishbowlContext.BomAutoCreateType
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }
    
    [Test]
    public void LoadBomItem()
    {
        var results = _fishbowlContext.BomItem
            .Include(e => e.Bom)
            .Include(e => e.BomItemGroup)
            .Include(e => e.Part)
            .Include(e => e.Type)
            .Include(e => e.Uom)
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }
    
    [Test]
    public void LoadBomItemGroup()
    {
        var results = _fishbowlContext.BomItemGroup
            .Include(e => e.Bom)
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }
    
    [Test]
    public void LoadBomItemType()
    {
        var results = _fishbowlContext.BomItemType
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }
    
    [Test]
    public void LoadCalCategory()
    {
        var results = _fishbowlContext.CalCategory
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
        var results = _fishbowlContext.CarrierService
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
    public void LoadCartonType()
    {
        var results = _fishbowlContext.CartonType
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
    public void LoadFobPoint()
    {
        var results = _fishbowlContext.FobPoint
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
    public void LoadItemAdjust()
    {
        var results = _fishbowlContext.ItemAdjust
            .Include(e => e.ExpenseAsAccount)
            .Include(e => e.IncomeAsAccount)
            .Include(e => e.TaxRate)
            .Include(e => e.Type)
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }
    
    [Test]
    public void LoadItemAdjustType()
    {
        var results = _fishbowlContext.ItemAdjustType
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }
    
    [Test]
    public void LoadKitDisplayType()
    {
        var results = _fishbowlContext.KitDisplayType
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }
    
    [Test]
    public void LoadLocation()
    {
        var results = _fishbowlContext.Location
            .Include(e => e.DefaultCustomer)
            .Include(e => e.DefaultVendor)
            .Include(e => e.LocationGroup)
            .Include(e => e.Type)
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }
    
    [Test]
    public void LoadLocationGroup()
    {
        var results = _fishbowlContext.LocationGroup
            .Include(e => e.QbClass)
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }
    
    [Test]
    public void LoadLocationType()
    {
        var results = _fishbowlContext.LocationType
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }
    
    [Test]
    public void LoadMo()
    {
        var results = _fishbowlContext.Mo
            .Include(e => e.LocationGroup)
            .Include(e => e.QbClass)
            .Include(e => e.So)
            .Include(e => e.Status)
            .Include(e => e.User)
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }
    
    [Test]
    public void LoadMoItem()
    {
        var results = _fishbowlContext.MoItem
            .Include(e => e.Parent)
            .Include(e => e.BomItem)
            .Include(e => e.Type)
            .Include(e => e.Bom)
            .Include(e => e.QbClass)
            .Include(e => e.Part)
            .Include(e => e.Mo)
            .Include(e => e.SoItem)
            .Include(e => e.Uom)
            .Include(e => e.Priority)
            .Include(e => e.Status)
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }
    
    [Test]
    public void LoadMoItemStatus()
    {
        var results = _fishbowlContext.MoItemStatus
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }
    
    [Test]
    public void LoadMoStatus()
    {
        var results = _fishbowlContext.MoStatus
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
    public void LoadPart()
    {
        var results = _fishbowlContext.Part
            .Include(e => e.AdjustmentAccount)
            .Include(e => e.DefaultBom)
            .Include(e => e.DefaultPoItemType)
            .Include(e => e.CogsAccount)
            .Include(e => e.DefaultProduct)
            .Include(e => e.InventoryAccount)
            .Include(e => e.ScrapAccount)
            .Include(e => e.Type)
            .Include(e => e.SizeUom)
            .Include(e => e.Tax)
            .Include(e => e.Uom)
            .Include(e => e.VarianceAccount)
            .Include(e => e.WeightUom)
            .Include(e => e.DefaultOutsourcedReturnItem)
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }
    
    [Test]
    public void LoadPartType()
    {
        var results = _fishbowlContext.PartType
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
    public void LoadPoItemType()
    {
        var results = _fishbowlContext.PoItemType
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
    public void LoadProduct()
    {
        var results = _fishbowlContext.Product
            .Include(e => e.DefaultSoItemTypeNavigation)
            .Include(e => e.DisplayType)
            .Include(e => e.IncomeAccount)
            .Include(e => e.Part)
            .Include(e => e.QbClass)
            .Include(e => e.Tax)
            .Include(e => e.Uom)
            .Include(e => e.SizeUom)
            .Include(e => e.WeightUom)
            .Include(e => e.DefaultCartonType)
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
    public void LoadSo()
    {
        var results = _fishbowlContext.So
            .Include(e => e.Carrier)
            .Include(e => e.CarrierService)
            .Include(e => e.Currency)
            .Include(e => e.Customer)
            .Include(e => e.FobPoint)
            .Include(e => e.LocationGroup)
            .Include(e => e.PaymentTerms)
            .Include(e => e.Priority)
            .Include(e => e.QbClass)
            .Include(e => e.ShipTerms)
            .Include(e => e.Status)
            .Include(e => e.SalesmanUser)
            .Include(e => e.TaxRateTable)
            .Include(e => e.Type)
            .Include(e => e.CalCategory)
            .Include(e => e.CreatedByUser)
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }
    
    [Test]
    public void LoadSoItem()
    {
        var results = _fishbowlContext.SoItem
            .Include(e => e.ItemAdjust)
            .Include(e => e.Product)
            .Include(e => e.QbClass)
            .Include(e => e.So)
            .Include(e => e.Status)
            .Include(e => e.Tax)
            .Include(e => e.Type)
            .Include(e => e.Uom)
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }
    
    [Test]
    public void LoadSoItemType()
    {
        var results = _fishbowlContext.SoItemType
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }
    
    [Test]
    public void LoadSoItemStatus()
    {
        var results = _fishbowlContext.SoItemStatus
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }
    
    [Test]
    public void LoadSoType()
    {
        var results = _fishbowlContext.SoType
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
    public void LoadUom()
    {
        var results = _fishbowlContext.Uom
            .Include(e => e.UomTypeNavigation)
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }
    
    [Test]
    public void LoadUomType()
    {
        var results = _fishbowlContext.UomType
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

    [Test]
    public void LoadWorkOrder()
    {
        var results = _fishbowlContext.Wo
            .Include(e => e.CalCategory)
            .Include(e => e.Customer)
            .Include(e => e.Location)
            .Include(e => e.MoItem)
            .Include(e => e.Priority)
            .Include(e => e.QbClass)
            .Include(e => e.WoStatus)
            .Include(e => e.User)
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }

    [Test]
    public void LoadWorkOrderStatus()
    {
        var results = _fishbowlContext.WoStatus
            .Take(10)
            .ToList();
        
        Assert.NotZero(results.Count);

        foreach (var result in results)
        {
            Utils.AssertRequiredProperties(result);
        }
    }
}