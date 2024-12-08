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
    public void Account()
    {
        _fishbowlContext.Account.RunFullTest();
    }

    [Test]
    public void AccountGroup()
    {
        _fishbowlContext.AccountGroup.RunFullTest();
    }

    [Test]
    public void AccountGroupRelation()
    {
        _fishbowlContext.AccountGroupRelation.RunFullTest();
    }
    
    [Test]
    public void AccountType()
    {
        _fishbowlContext.AccountType.RunFullTest();
    }

    [Test]
    public void AsAccount()
    {
        _fishbowlContext.AsAccount.RunFullTest();
    }
    
    [Test]
    public void AsAccountType()
    {
        _fishbowlContext.AsAccountType.RunFullTest();
    }
    
    [Test]
    public void Bom()
    {
        _fishbowlContext.Bom.RunFullTest();
    }
    
    [Test]
    public void BomAutoCreateType()
    {
        _fishbowlContext.BomAutoCreateType.RunFullTest();
    }
    
    [Test]
    public void BomItem()
    {
        _fishbowlContext.BomItem.RunFullTest();
    }
    
    [Test]
    public void BomItemGroup()
    {
        _fishbowlContext.BomItemGroup.RunFullTest();
    }
    
    [Test]
    public void BomItemType()
    {
        _fishbowlContext.BomItemType.RunFullTest();
    }
    
    [Test]
    public void BomToLocation()
    {
        _fishbowlContext.BomToLocation.RunFullTest();
    }
    
    [Test]
    public void CalCategory()
    {
        _fishbowlContext.CalCategory.RunFullTest();
    }
    
    [Test]
    public void Carrier()
    {
        _fishbowlContext.Carrier.RunFullTest();
    }
    
    [Test]
    public void CarrierService()
    {
        _fishbowlContext.CarrierService.RunFullTest();
    }
    
    [Test]
    public void CartonType()
    {
        _fishbowlContext.CartonType.RunFullTest();
    }
    
    [Test]
    public void Currency()
    {
        _fishbowlContext.Currency.RunFullTest();
    }

    [Test]
    public void Customer()
    {
        _fishbowlContext.Customer.RunFullTest();
    }
    
    [Test]
    public void FobPoint()
    {
        _fishbowlContext.FobPoint.RunFullTest();
    }

    [Test]
    public void IssuableStatus()
    {
        _fishbowlContext.IssuableStatus.RunFullTest();
    }
    
    [Test]
    public void ItemAdjust()
    {
        _fishbowlContext.ItemAdjust.RunFullTest();
    }
    
    [Test]
    public void ItemAdjustType()
    {
        _fishbowlContext.ItemAdjustType.RunFullTest();
    }
    
    [Test]
    public void KitDisplayType()
    {
        _fishbowlContext.KitDisplayType.RunFullTest();
    }
    
    [Test]
    public void Location()
    {
        _fishbowlContext.Location.RunFullTest();
    }
    
    [Test]
    public void LocationGroup()
    {
        _fishbowlContext.LocationGroup.RunFullTest();
    }
    
    [Test]
    public void LocationType()
    {
        _fishbowlContext.LocationType.RunFullTest();
    }
    
    [Test]
    public void Mo()
    {
        _fishbowlContext.Mo.RunFullTest();
    }
    
    [Test]
    public void MoItem()
    {
        _fishbowlContext.MoItem.RunFullTest();
    }
    
    [Test]
    public void MoItemStatus()
    {
        _fishbowlContext.MoItemStatus.RunFullTest();
    }
    
    [Test]
    public void MoStatus()
    {
        _fishbowlContext.MoStatus.RunFullTest();
    }

    [Test]
    public void OrderType()
    {
        _fishbowlContext.OrderType.RunFullTest();
    }
    
    [Test]
    public void Part()
    {
        _fishbowlContext.Part.RunFullTest();
    }
    
    [Test]
    public void PartType()
    {
        _fishbowlContext.PartType.RunFullTest();
    }

    [Test]
    public void PaymentTerms()
    {
        _fishbowlContext.PaymentTerms.RunFullTest();
    }

    [Test]
    public void PaymentTermsType()
    {
        _fishbowlContext.PaymentTermsType.RunFullTest();
    }
    
    [Test]
    public void PoItemType()
    {
        _fishbowlContext.PoItemType.RunFullTest();
    }

    [Test]
    public void Priority()
    {
        _fishbowlContext.Priority.RunFullTest();
    }
    
    [Test]
    public void Product()
    {
        _fishbowlContext.Product.RunFullTest();
    }

    [Test]
    public void QbClass()
    {
        _fishbowlContext.QbClass.RunFullTest();
    }

    [Test]
    public void ShipTerms()
    {
        _fishbowlContext.ShipTerms.RunFullTest();
    }
    
    [Test]
    public void So()
    {
        _fishbowlContext.So.RunFullTest();
    }
    
    [Test]
    public void SoItem()
    {
        _fishbowlContext.SoItem.RunFullTest();
    }
    
    [Test]
    public void SoItemType()
    {
         _fishbowlContext.SoItemType.RunFullTest();
    }
    
    [Test]
    public void SoItemStatus()
    {
        _fishbowlContext.SoItemStatus.RunFullTest();
    }
    
    [Test]
    public void SoType()
    {
        _fishbowlContext.SoType.RunFullTest();
    }

    [Test]
    public void SysUser()
    {
        _fishbowlContext.SysUser.RunFullTest();
    }

    [Test]
    public void TaxRate()
    {
        _fishbowlContext.TaxRate.RunFullTest();
    }

    [Test]
    public void TaxRateType()
    {
        _fishbowlContext.TaxRateType.RunFullTest();
    }
    
    [Test]
    public void Uom()
    {
        _fishbowlContext.Uom.RunFullTest();
    }
    
    [Test]
    public void UomType()
    {
        _fishbowlContext.UomType.RunFullTest();
    }

    [Test]
    public void Vendor()
    {
        _fishbowlContext.Vendor.RunFullTest();
    }

    [Test]
    public void VendorStatus()
    {
        _fishbowlContext.VendorStatus.RunFullTest();
    }

    [Test]
    public void Wo()
    {
        _fishbowlContext.Wo.RunFullTest();
    }

    [Test]
    public void WoStatus()
    {
        _fishbowlContext.WoStatus.RunFullTest();
    }
}