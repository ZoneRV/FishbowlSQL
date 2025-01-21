using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;

/// <summary>
///     See
///     <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/poitem.sql">Link</a>
///     for SQL script.
///     <br/>
///     See <a href="https://fishbowlhelp.com/files/database/tables/poitem.html">Link</a> for
///     official Fishbowl documentation.
/// </summary>
public class PoItem
{
    [Key]
    [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; set; }

    public int? CustomerId { get; set; }

    public DateTime? DateLastFulfillment { get; set; }

    [Required]
    public DateTime DateScheduledFulfillment { get; set; }

    [MaxLength(256)]
    public string? Description { get; set; }

    [Column(TypeName = "decimal(28,9)")]
    public decimal? McTotalCost { get; set; }

    public string? Note { get; set; }

    public int? PartId { get; set; }

    public int? OutsourcedPartId { get; set; }

    [Required]
    [MaxLength(70)]
    public string PartNum { get; set; } = null!;

    [Required]
    public int PoId { get; set; }

    [Required]
    public int PoLineItem { get; set; }

    public int? QbClassId { get; set; }

    [Column(TypeName = "decimal(28,9)")]
    public decimal? QtyFulfilled { get; set; }

    [Column(TypeName = "decimal(28,9)")]
    public decimal? QtyPicked { get; set; }

    [Column(TypeName = "decimal(28,9)")]
    public decimal? QtyToFulfill { get; set; }

    [Required]
    public bool RepairFlag { get; set; }

    [MaxLength(15)]
    public string? RevLevel { get; set; }

    [Required]
    public int StatusId { get; set; }

    public int? TaxId { get; set; }

    [Required]
    public double TaxRate { get; set; }

    [Required]
    public bool TbdCostFlag { get; set; }

    [Column(TypeName = "decimal(28,9)")]
    public decimal? TotalCost { get; set; }

    [Required]
    public int TypeId { get; set; }

    [Column(TypeName = "decimal(28,9)")]
    public decimal? UnitCost { get; set; }

    public int? UomId { get; set; }

    [Required]
    [MaxLength(70)]
    public string VendorPartNum { get; set; } = null!;

    [Required]
    [MaxLength(70)]
    public string OutsourcedPartNumber { get; set; } = null!;

    [Required]
    [MaxLength(256)]
    public string OutsourcedPartDescription { get; set; } = null!;

    public string? CustomFields { get; set; }

    // Navigation Properties
    public virtual Customer? Customer { get; set; }
    public virtual Part? Part { get; set; }
    public virtual Part? OutsourcedPart { get; set; }
    public virtual PickingOrder Po { get; set; } = null!;
    public virtual QbClass? QbClass { get; set; }
    public virtual PoItemStatus Status { get; set; } = null!;
    public virtual TaxRate? Tax { get; set; }
    public virtual PoItemType Type { get; set; } = null!;
}