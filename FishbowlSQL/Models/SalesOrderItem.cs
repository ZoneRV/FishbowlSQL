// Generated from Fishbowl SQL Schema

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;

/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/soitem.sql">Link</a> for
///     SQL script.s
///     <br/>
///     See <a href="https://fishbowlhelp.com/files/database/tables/soitem.html">Link</a> for
///     official Fishbowl documentation.
/// </summary>
public class SalesOrderItem
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; init; }
    
    public decimal? AdjustAmount { get; init; }
    
    public decimal? AdjustPercentage { get; init; }
    
    [StringLength(70)]
    public string CustomerPartNum { get; init; }
    
    public DateTimeOffset? DateLastFulfillment { get; init; }
    
    public DateTimeOffset? DateLastModified { get; init; }
    
    [Required]
    public DateTimeOffset DateScheduledFulfillment { get; init; }
    
    [StringLength(256)]
    public string Description { get; init; }
    
    public int? ExchangeSOLineItem { get; init; }
    
    public int? ItemAdjustId { get; init; }
    
    public decimal? MarkupCost { get; init; }
    
    public decimal? McTotalPrice { get; init; }
    
    public string? Note { get; init; }
    
    public int? ProductId { get; init; }
    
    [Required]
    [StringLength(70)]
    public string ProductNum { get; init; }
    
    public int? QbClassId { get; init; }
    
    public decimal? QtyFulfilled { get; init; }
    
    public decimal? QtyOrdered { get; init; }
    
    public decimal? QtyPicked { get; init; }
    
    public decimal? QtyToFulfill { get; init; }
    
    [StringLength(15)]
    public string RevLevel { get; init; }
    
    [Required]
    public bool ShowItemFlag { get; init; }
    
    [Required]
    public int SoId { get; init; }
    
    [Required]
    public int SoLineItem { get; init; }
    
    [Required]
    public int StatusId { get; init; }
    
    public int? TaxId { get; init; }
    
    public double? TaxRate { get; init; }
    
    [Required]
    public bool TaxableFlag { get; init; }
    
    public decimal? TotalCost { get; init; }
    
    public decimal? TotalPrice { get; init; }
    
    [Required]
    public int TypeId { get; init; }
    
    public decimal? UnitPrice { get; init; }
    
    public int? UomId { get; init; }
    
    // TODO: Implement manual handling for the CustomFields as it's a JSON type
    [Column(TypeName="json")]
    public string CustomFields { get; init; }

    [ForeignKey("itemAdjustId")]
    public virtual ItemAdjust? ItemAdjust { get; init; }

    [ForeignKey("productId")]
    public virtual Product? Product { get; init; }

    [ForeignKey("qbClassId")] 
    public virtual QbClass? QbClass { get; init; }

    [ForeignKey("soId"), Required]
    public virtual SalesOrder So { get; init; }

    [ForeignKey("statusId"), Required]
    public virtual SoItemStatus Status { get; init; }

    [ForeignKey("taxId")]
    public virtual TaxRate? Tax { get; init; }

    [ForeignKey("typeId"), Required]
    public virtual SoItemType Type { get; init; }

    [ForeignKey("uomId")]
    public virtual UnitOfMeasurement? Uom { get; init; }
}