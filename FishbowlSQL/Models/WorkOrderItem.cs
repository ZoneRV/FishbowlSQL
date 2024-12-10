using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;

/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/woitem.sql">Link</a> for
///     SQL script.
///     <br/>
///     See <a href="https://fishbowlhelp.com/files/database/tables/woitem.html">Link</a> for
///     official Fishbowl documentation.
/// </summary>
public class WorkOrderItem
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; init; }

    public decimal? Cost { get; init; }

    public decimal? StandardCost { get; init; }

    [StringLength(256)]
    public string? Description { get; init; }

    [Required]
    public int MoItemId { get; init; }

    public int? PartId { get; init; }

    public decimal? QtyScrapped { get; init; }

    public decimal? QtyTarget { get; init; }

    public decimal? QtyUsed { get; init; }

    [Required]
    public int SortId { get; init; }

    public int? TypeId { get; init; }

    public int? UomId { get; init; }

    [Required]
    public int WoId { get; init; }

    [Required]
    public bool OneTimeItem { get; init; }

    [ForeignKey("moId"), Required]
    public virtual ManufacturingOrder ManufacturingOrder { get; init; }

    [ForeignKey("partId")]
    public virtual Part? Part { get; init; }

    [ForeignKey("sortId"), Required]
    public virtual SalesOrder SalesOrder { get; init; }

    [ForeignKey("typeId")]
    public virtual BOMItemType? BomItemType { get; init; }

    [ForeignKey("uomId")]
    public virtual UnitOfMeasurement? UnitOfMeasurement { get; init; }

    [ForeignKey("woId"), Required]
    public virtual WorkOrder WorkOrder { get; init; }

    //public virtual ICollection<PickItem>   PickItems   { get; set; }
    //public virtual ICollection<PostWoItem> PostWoItems { get; set; }
    //public virtual ICollection<Tag> Tags { get; set; }

}