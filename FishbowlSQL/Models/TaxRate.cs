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
    public int Id { get; set; }
        
    [StringLength(30)]
    public string? AccountingHash { get; set; }

    [StringLength(36)]
    public string? AccountingId { get; set; }
        
    [Required]
    public bool ActiveFlag { get; set; }

    [StringLength(5)]
    public string? Code { get; set; }
        
    public DateTimeOffset? DateCreated { get; set; }
        
    public DateTimeOffset? DateLastModified { get; set; }
        
    [Required]
    public bool DefaultFlag { get; set; }

    [StringLength(256)]
    public string? Description { get; set; }

    [StringLength(31), Required]
    public string Name { get; set; }
        
    public int? OrderTypeId { get; set; }
        
    public double? Rate { get; set; }
        
    public int? TaxAccountId { get; set; }

    [StringLength(25)]
    public string TypeCode { get; set; }
        
    [Required]
    public int TypeId { get; set; }
        
    public decimal? UnitCost { get; set; }
        
    public int? VendorId { get; set; }
    
    [ForeignKey("OrderTypeId")]
    public virtual OrderType OrderType { get; set; }
    
    [ForeignKey("TaxAccountId")]
    public virtual AsAccount TaxAccount { get; set; }
    
    [ForeignKey("VendorId")]
    public virtual Vendor Vendor { get; set; }
    
    [ForeignKey("typeId"), Required]
    public virtual TaxRateType TaxRateType { get; set; }
}