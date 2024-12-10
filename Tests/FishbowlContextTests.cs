using FishbowlSQL.DbContexts;

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
        
        _fishbowlContext = new FishbowlContext
        {
            ConnectionString = connectionVariable
        };
    }

    public void Dispose()
    {
        _fishbowlContext.Dispose();
    }

    [Test]
    public void Account()
    {
        _fishbowlContext.RunFullTest(x => x.Account);
    }

    [Test]
    public void AccountGroup()
    {
        _fishbowlContext.RunFullTest(x => x.AccountGroup);
    }

    [Test]
    public void AccountGroupRelation()
    {
        _fishbowlContext.RunFullTest(x => x.AccountGroupRelation);
    }
    
    [Test]
    public void AccountType()
    {
        _fishbowlContext.RunFullTest(x => x.AccountType);
    }

    [Test]
    public void AsAccount()
    {
        _fishbowlContext.RunFullTest(x => x.AsAccount);
    }
    
    [Test]
    public void AsAccountType()
    {
        _fishbowlContext.RunFullTest(x => x.AsAccountType);
    }
    
    [Test]
    public void Bom()
    {
        _fishbowlContext.RunFullTest(x => x.Bom);
    }
    
    [Test]
    public void BomAutoCreateType()
    {
        _fishbowlContext.RunFullTest(x => x.BomAutoCreateType);
    }
    
    [Test]
    public void BomInstructionItem()
    {
        _fishbowlContext.RunFullTest(x => x.BomInstructionItem);
    }
    
    [Test]
    public void BomItem()
    {
        _fishbowlContext.RunFullTest(x => x.BomItem);
    }
    
    [Test]
    public void BomItemGroup()
    {
        _fishbowlContext.RunFullTest(x => x.BomItemGroup);
    }
    
    [Test]
    public void BomItemType()
    {
        _fishbowlContext.RunFullTest(x => x.BomItemType);
    }
    
    [Test]
    public void BomToLocation()
    {
        _fishbowlContext.RunFullTest(x => x.BomToLocation);
    }
    
    [Test]
    public void CalCategory()
    {
        _fishbowlContext.RunFullTest(x => x.CalCategory);
    }
    
    [Test]
    public void Carrier()
    {
        _fishbowlContext.RunFullTest(x => x.Carrier);
    }
    
    [Test]
    public void CarrierService()
    {
        _fishbowlContext.RunFullTest(x => x.CarrierService);
    }
    
    [Test]
    public void CartonType()
    {
        _fishbowlContext.RunFullTest(x => x.CartonType);
    }
    
    [Test]
    public void Currency()
    {
        _fishbowlContext.RunFullTest(x => x.Currency);
    }

    [Test]
    public void Customer()
    {
        _fishbowlContext.RunFullTest(x => x.Customer);
    }
    
    [Test]
    public void FobPoint()
    {
        _fishbowlContext.RunFullTest(x => x.FobPoint);
    }
    
    [Test]
    public void Image()
    {
        _fishbowlContext.RunFullTest(x => x.Image);
    }

    [Test]
    public void IssuableStatus()
    {
        _fishbowlContext.RunFullTest(x => x.IssuableStatus);
    }
    
    [Test]
    public void ItemAdjust()
    {
        _fishbowlContext.RunFullTest(x => x.ItemAdjust);
    }
    
    [Test]
    public void ItemAdjustType()
    {
        _fishbowlContext.RunFullTest(x => x.ItemAdjustType);
    }
    
    [Test]
    public void KitDisplayType()
    {
        _fishbowlContext.RunFullTest(x => x.KitDisplayType);
    }
    
    [Test]
    public void Location()
    {
        _fishbowlContext.RunFullTest(x => x.Location);
    }
    
    [Test]
    public void LocationGroup()
    {
        _fishbowlContext.RunFullTest(x => x.LocationGroup);
    }
    
    [Test]
    public void LocationType()
    {
        _fishbowlContext.RunFullTest(x => x.LocationType);
    }
    
    [Test]
    public void Mo()
    {
        _fishbowlContext.RunFullTest(x => x.Mo);
    }
    
    [Test]
    public void MoItem()
    {
        _fishbowlContext.RunFullTest(x => x.MoItem);
    }
    
    [Test]
    public void MoItemStatus()
    {
        _fishbowlContext.RunFullTest(x => x.MoItemStatus);
    }
    
    [Test]
    public void MoStatus()
    {
        _fishbowlContext.RunFullTest(x => x.MoStatus);
    }

    [Test]
    public void OrderType()
    {
        _fishbowlContext.RunFullTest(x => x.OrderType);
    }
    
    [Test]
    public void Part()
    {
        _fishbowlContext.RunFullTest(x => x.Part);
    }
    
    [Test]
    public void PartType()
    {
        _fishbowlContext.RunFullTest(x => x.PartType);
    }

    [Test]
    public void PaymentTerms()
    {
        _fishbowlContext.RunFullTest(x => x.PaymentTerms);
    }

    [Test]
    public void PaymentTermsType()
    {
        _fishbowlContext.RunFullTest(x => x.PaymentTermsType);
    }
    
    [Test]
    public void PoItemType()
    {
        _fishbowlContext.RunFullTest(x => x.PoItemType);
    }

    [Test]
    public void Priority()
    {
        _fishbowlContext.RunFullTest(x => x.Priority);
    }
    
    [Test]
    public void Product()
    {
        _fishbowlContext.RunFullTest(x => x.Product);
    }

    [Test]
    public void QbClass()
    {
        _fishbowlContext.RunFullTest(x => x.QbClass);
    }

    [Test]
    public void ShipTerms()
    {
        _fishbowlContext.RunFullTest(x => x.ShipTerms);
    }
    
    [Test]
    public void So()
    {
        _fishbowlContext.RunFullTest(x => x.So);
    }
    
    [Test]
    public void SoItem()
    {
        _fishbowlContext.RunFullTest(x => x.SoItem);
    }
    
    [Test]
    public void SoItemType()
    {
         _fishbowlContext.RunFullTest(x => x.SoItemType);
    }
    
    [Test]
    public void SoItemStatus()
    {
        _fishbowlContext.RunFullTest(x => x.SoItemStatus);
    }
    
    [Test]
    public void SoType()
    {
        _fishbowlContext.RunFullTest(x => x.SoType);
    }

    [Test]
    public void SysUser()
    {
        _fishbowlContext.RunFullTest(x => x.SysUser);
    }

    [Test]
    public void TaxRate()
    {
        _fishbowlContext.RunFullTest(x => x.TaxRate);
    }

    [Test]
    public void TaxRateType()
    {
        _fishbowlContext.RunFullTest(x => x.TaxRateType);
    }
    
    [Test]
    public void Uom()
    {
        _fishbowlContext.RunFullTest(x => x.Uom);
    }
    
    [Test]
    public void UomType()
    {
        _fishbowlContext.RunFullTest(x => x.UomType);
    }

    [Test]
    public void Vendor()
    {
        _fishbowlContext.RunFullTest(x => x.Vendor);
    }

    [Test]
    public void VendorStatus()
    {
        _fishbowlContext.RunFullTest(x => x.VendorStatus);
    }

    [Test]
    public void Wo()
    {
        _fishbowlContext.RunFullTest(x => x.Wo);
    }

    [Test]
    public void WoInstruction()
    {
        _fishbowlContext.RunFullTest(x => x.WoInstruction);
    }

    [Test]
    public void WoStatus()
    {
        _fishbowlContext.RunFullTest(x => x.WoStatus);
    }
}