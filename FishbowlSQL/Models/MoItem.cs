// Generated from Fishbowl SQL Schema

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;

/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/moitem.sql">Link</a> for
///     SQL script.
/// </summary>
public class MoItem
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; init; }
    
    [Required]
    public bool AddToService { get; init; }
    
    public int? BomId { get; init; }
    
    public int? BomItemId { get; init; }
    
    public DateTimeOffset? DateScheduled { get; init; }
    
    public DateTimeOffset? DateScheduledToStart { get; init; }
    
    [Required]
    [StringLength(256)]
    public string Description { get; init; }
    
    public string? InstructionNote { get; init; }
    
    public int? MoId { get; init; }
    
    [Required]
    public bool OneTimeItem { get; init; }
    
    public int? ParentId { get; init; }
    
    public int? PartId { get; init; }
    
    public decimal? PriceAdjustment { get; init; }
    
    public int? PriorityId { get; init; }
    
    public int? QbClassId { get; init; }
    
    public decimal? QtyFulfilled { get; init; }
    
    public decimal? QtyToFulfill { get; init; }
    
    public int? SoItemId { get; init; }
    
    [Required]
    public int SortIdInstruct { get; init; }
    
    [Required]
    public bool Stage { get; init; }
    
    public int? StageLevel { get; init; }
    
    [Required]
    public int StatusId { get; init; }
    
    public decimal? TotalCost { get; init; }
    
    [Required]
    public int TypeId { get; init; }
    
    public int? UomId { get; init; }
    
    public int? CalCategoryId { get; init; }

    [ForeignKey("parentId")]
    public virtual MoItem? Parent { get; init; }

    [ForeignKey("statusId"), Required]
    public virtual MoItemStatus Status { get; init; }

    [ForeignKey("bomItemId")]
    public virtual BomItem? BomItem { get; init; }

    [ForeignKey("typeId"), Required]
    public virtual BomItemType Type { get; init; }

    [ForeignKey("bomId")]
    public virtual Bom? Bom { get; init; }

    [ForeignKey("qbClassId")]
    public virtual QbClass? QbClass { get; init; }

    [ForeignKey("partId")]
    public virtual Part? Part { get; init; }

    [ForeignKey("moId")]
    public virtual Mo? Mo { get; init; }

    [ForeignKey("soItemId")]
    public virtual SoItem? SoItem { get; init; }

    [ForeignKey("uomId")]
    public virtual Uom? Uom { get; init; }

    [ForeignKey("priorityId")]
    public virtual Priority? Priority { get; init; }
}