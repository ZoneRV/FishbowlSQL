// Generated from Fishbowl SQL Schema

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;

/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/taxrate.sql">Link</a> for
///     SQL script.
/// </summary>
public class TaxRate
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; init; }
        
    [StringLength(30)]
    public string? AccountingHash { get; init; }

    [StringLength(36)]
    public string? AccountingId { get; init; }
        
    [Required]
    public bool ActiveFlag { get; init; }

    [StringLength(5)]
    public string? Code { get; init; }
        
    public DateTimeOffset? DateCreated { get; init; }
        
    public DateTimeOffset? DateLastModified { get; init; }
        
    [Required]
    public bool DefaultFlag { get; init; }

    [StringLength(256)]
    public string? Description { get; init; }

    [StringLength(31), Required]
    public string Name { get; init; }
        
    public int? OrderTypeId { get; init; }
        
    public double? Rate { get; init; }
        
    public int? TaxAccountId { get; init; }

    [StringLength(25)]
    public string TypeCode { get; init; }
        
    [Required]
    public int TypeId { get; init; }
        
    public decimal? UnitCost { get; init; }
        
    public int? VendorId { get; init; }
    
    [ForeignKey("OrderTypeId")]
    public virtual OrderType OrderType { get; init; }
    
    [ForeignKey("TaxAccountId")]
    public virtual AsAccount TaxAccount { get; init; }
    
    [ForeignKey("VendorId")]
    public virtual Vendor Vendor { get; init; }
    
    [ForeignKey("typeId"), Required]
    public virtual TaxRateType TaxRateType { get; init; }
}