// Generated from Fishbowl SQL Schema

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;


/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/product.sql">Link</a> for
///     SQL script.
/// </summary>
public class Product
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; init; }
    
    [StringLength(30)]
    public string? AccountingHash { get; init; }
    
    [StringLength(36)]
    public string? AccountingId { get; init; }
    
    [Required]
    public bool ActiveFlag { get; init; }
    
    [StringLength(256)]
    public string? AlertNote { get; init; }
    
    [Required]
    public decimal CartonCount { get; init; }
    
    public int? DefaultCartonTypeId { get; init; }
    
    public DateTimeOffset? DateCreated { get; init; }
    
    public DateTimeOffset? DateLastModified { get; init; }
    
    [Required]
    public int DefaultSoItemType { get; init; }
    
    [StringLength(252)]
    public string? Description { get; init; }
    
    public string Details { get; init; }
    
    public int? DisplayTypeId { get; init; }
    
    public decimal? Height { get; init; }
    
    public int? IncomeAccountId { get; init; }
    
    [Required]
    public bool KitFlag { get; init; }
    
    [Required]
    public bool KitGroupedFlag { get; init; }
    
    public decimal? Len { get; init; }
    
    [Required]
    [StringLength(70)]
    public string Num { get; init; }
    
    public int? PartId { get; init; }
    
    public decimal? Price { get; init; }
    
    public int? QbClassId { get; init; }
    
    [Required]
    public bool SellableInOtherUoms { get; init; }
    
    [Required]
    public bool ShowSoComboFlag { get; init; }
    
    public int? SizeUomId { get; init; }
    
    [StringLength(31)]
    public string? Sku { get; init; }
    
    public int? TaxId { get; init; }
    
    [Required]
    public bool TaxableFlag { get; init; }
    
    [Required]
    public int UomId { get; init; }
    
    [StringLength(31)]
    public string? Upc { get; init; }
    
    [StringLength(256)]
    public string? Url { get; init; }
    
    [Required]
    public bool UsePriceFlag { get; init; }
    
    public decimal? Weight { get; init; }
    
    public int? WeightUomId { get; init; }
    
    public decimal? Width { get; init; }
    
    // TODO: Implement manual handling for the CustomFields as it's a JSON type
    [Column(TypeName="json")]
    public string? CustomFields { get; init; } 
    
    [ForeignKey("defaultSoItemType"), Required]
    public virtual SoItemType DefaultSoItemTypeNavigation { get; init; }
    
    [ForeignKey("displayTypeId")]
    public virtual KitDisplayType? DisplayType { get; init; }
    
    [ForeignKey("incomeAccountId")]
    public virtual AsAccount? IncomeAccount { get; init; }
    
    [ForeignKey("partId")]
    public virtual Part? Part { get; init; }
    
    [ForeignKey("qbClassId")]
    public virtual QbClass? QbClass { get; init; }
    
    [ForeignKey("taxId")]
    public virtual TaxRate? Tax { get; init; }
    
    [ForeignKey("UomId"), Required]
    public virtual Uom? Uom { get; init; }
    
    [ForeignKey("sizeUomId")]
    public virtual Uom? SizeUom { get; init; }
    
    [ForeignKey("weightUomId")]
    public virtual Uom? WeightUom { get; init; }

    [ForeignKey("defaultCartonTypeId")]
    public virtual CartonType? DefaultCartonType { get; init; }
}