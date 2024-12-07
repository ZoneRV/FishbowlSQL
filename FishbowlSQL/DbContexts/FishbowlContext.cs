﻿using FishbowlSQL.Models;
using Microsoft.EntityFrameworkCore;
using MySql.Data.MySqlClient;

namespace FishbowlSQL.DbContexts;

public class FishbowlContext(string connectionString) : DbContext
{
    private readonly string _connectionString = connectionString;

    public DbSet<Account> Account { get; set; }
    public DbSet<AccountType> AccountType { get; set; }
    public DbSet<AsAccount> AsAccount { get; set; }
    public DbSet<AsAccountType> AsAccountType { get; set; }
    public DbSet<Bom> Bom { get; set; }
    public DbSet<BomAutoCreateType> BomAutoCreateType { get; set; }
    public DbSet<CalCategory> CalCategory { get; set; }
    public DbSet<Carrier> Carrier { get; set; }
    public DbSet<CarrierService> Carrierservice { get; set; }
    public DbSet<CartonType> CartonType { get; set; }
    public DbSet<Currency> Currency { get; set; }
    public DbSet<Customer> Customer { get; set; }
    public DbSet<IssuableStatus> IssuableStatus { get; set; }
    public DbSet<KitDisplayType> KitDisplayType { get; set; }
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
    public DbSet<SoItemType> SoItemType { get; set; }
    public DbSet<SysUser> SysUser { get; set; }
    public DbSet<TaxRate> TaxRate { get; set; }
    public DbSet<TaxRateType> TaxRateType { get; set; }
    public DbSet<Uom> Uom { get; set; }
    public DbSet<UomType> UomType { get; set; }
    public DbSet<Vendor> Vendor { get; set; }
    public DbSet<VendorStatus> VendorStatus { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        optionsBuilder.UseMySQL(new MySqlConnection(_connectionString));
        base.OnConfiguring(optionsBuilder);
    }
}