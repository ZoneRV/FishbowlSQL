// Generated from Fishbowl SQL Schema

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace FishbowlSQL.Models;

/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/account.sql">Link</a> for
///     SQL script.
/// </summary>
public class Account : IBaseEntity
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; init; }

    public int? TypeId { get; init; }

    [ForeignKey("TypeId")] 
    public virtual AccountType? AccountType { get; init; }
    
    //TODO Test
    public virtual ICollection<AccountGroup> AccountGroups { get; set; }
    //public virtual ICollection<Address> Addresses { get; set; }
    //public virtual ICollection<AddressAudit> AddressAudits { get; set; }
    //public virtual ICollection<AddressMultiLineView> AddressMultiLineViews { get; set; }
    //public virtual ICollection<Company> Companies { get; set; }
    //public virtual ICollection<CompanyAudit> CompanyAudits { get; set; }
    //public virtual ICollection<Contact> Contacts { get; set; }
    //public virtual ICollection<ContactAudit> ContactAudits { get; set; }
    public virtual ICollection<Customer> Customers { get; set; }
    //public virtual ICollection<CustomerAudit> CustomerAudits { get; set; }
    public virtual ICollection<Vendor> Vendors { get; set; }
    //public virtual ICollection<VendorAudit> VendorAudits { get; set; }

    public static void BuildModel(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Account>()
            .HasMany(a => a.AccountGroups)
            .WithMany(ag => ag.Accounts)
            .UsingEntity(
                "accountgrouprelation",
                l => l.HasOne(typeof(AccountGroup)).WithMany().HasForeignKey("GroupId").HasPrincipalKey(nameof(Models.AccountGroup.Id)),
                r => r.HasOne(typeof(Account)).WithMany().HasForeignKey("AccountId").HasPrincipalKey(nameof(Models.Account.Id)),
                j => j.HasKey("GroupId", "AccountId"));

        modelBuilder.Entity<Account>()
            .HasMany(a => a.Vendors)
            .WithOne(v => v.Account)
            .HasForeignKey(f => f.AccountId)
            .HasPrincipalKey(a => a.Id);

        modelBuilder.Entity<Account>()
            .HasMany(a => a.Customers)
            .WithOne(c => c.Account)
            .HasForeignKey(f => f.AccountId)
            .HasPrincipalKey(a => a.Id);
    }
}