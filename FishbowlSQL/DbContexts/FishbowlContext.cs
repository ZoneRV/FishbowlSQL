using System.Reflection;
using FishbowlSQL.Models;
using Microsoft.EntityFrameworkCore;
using MySql.Data.MySqlClient;

namespace FishbowlSQL.DbContexts;

public class FishbowlContext(string connectionString) : DbContext
{
    private readonly string _connectionString = connectionString;

    public DbSet<Account> Account { get; set; }
    public DbSet<AccountGroup> AccountGroup { get; set; }
    public DbSet<AccountGroupRelation> AccountGroupRelation { get; set; }
    public DbSet<AccountType> AccountType { get; set; }
    public DbSet<AsAccount> AsAccount { get; set; }
    public DbSet<AsAccountType> AsAccountType { get; set; }
    public DbSet<Bom> Bom { get; set; }
    public DbSet<BomAutoCreateType> BomAutoCreateType { get; set; }
    public DbSet<BomInstructionItem> BomInstructionItem { get; set; }
    public DbSet<BomItem> BomItem { get; set; }
    public DbSet<BomItemGroup> BomItemGroup { get; set; }
    public DbSet<BomItemType> BomItemType { get; set; }
    public DbSet<BomToLocation> BomToLocation { get; set; }
    public DbSet<CalCategory> CalCategory { get; set; }
    public DbSet<Carrier> Carrier { get; set; }
    public DbSet<CarrierService> CarrierService { get; set; }
    public DbSet<CartonType> CartonType { get; set; }
    public DbSet<Currency> Currency { get; set; }
    public DbSet<Customer> Customer { get; set; }
    public DbSet<FobPoint> FobPoint { get; set; }
    public DbSet<Image> Image { get; set; }
    public DbSet<IssuableStatus> IssuableStatus { get; set; }
    public DbSet<ItemAdjust> ItemAdjust { get; set; }
    public DbSet<ItemAdjustType> ItemAdjustType { get; set; }
    public DbSet<KitDisplayType> KitDisplayType { get; set; }
    public DbSet<Location> Location { get; set; }
    public DbSet<LocationGroup> LocationGroup { get; set; }
    public DbSet<LocationType> LocationType { get; set; }
    public DbSet<Mo> Mo { get; set; }
    public DbSet<MoItem> MoItem { get; set; }
    public DbSet<MoItemStatus> MoItemStatus { get; set; }
    public DbSet<MoStatus> MoStatus { get; set; }
    public DbSet<OrderType> OrderType { get; set; }
    public DbSet<Part> Part { get; set; }
    public DbSet<PartType> PartType { get; set; }
    public DbSet<PaymentTerms> PaymentTerms { get; set; }
    public DbSet<PaymentTermsType> PaymentTermsType { get; set; }
    public DbSet<PoItemType> PoItemType { get; set; }
    public DbSet<Priority> Priority { get; set; }
    public DbSet<Product> Product { get; set; }
    public DbSet<QbClass> QbClass { get; set; }
    public DbSet<ShipTerms> ShipTerms { get; set; }
    public DbSet<So> So { get; set; }
    public DbSet<SoItem> SoItem { get; set; }
    public DbSet<SoItemStatus> SoItemStatus { get; set; }
    public DbSet<SoItemType> SoItemType { get; set; }
    public DbSet<SoStatus> SoStatus { get; set; }
    public DbSet<SoType> SoType { get; set; }
    public DbSet<SysUser> SysUser { get; set; }
    public DbSet<TaxRate> TaxRate { get; set; }
    public DbSet<TaxRateType> TaxRateType { get; set; }
    public DbSet<Uom> Uom { get; set; }
    public DbSet<UomType> UomType { get; set; }
    public DbSet<Vendor> Vendor { get; set; }
    public DbSet<VendorStatus> VendorStatus { get; set; }
    public DbSet<WorkOrder> Wo { get; set; }
    public DbSet<WorkOrderInstruction> WoInstruction { get; set; }
    public DbSet<WorkOrderStatus> WoStatus { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        optionsBuilder.UseMySQL(new MySqlConnection(_connectionString));
        base.OnConfiguring(optionsBuilder);
    }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        Models.Account.BuildModel(modelBuilder);
        Models.Bom.BuildModel(modelBuilder);
        
        base.OnModelCreating(modelBuilder);
    }
}