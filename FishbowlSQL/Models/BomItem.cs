// Generated from Fishbowl SQL Schema

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;

/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/bomitem.sql">Link</a> for
///     SQL script.
///     <br/>
///     See <a href="https://fishbowlhelp.com/files/database/tables/bomitem.html">Link</a> for
///     official Fishbowl documentation.
/// </summary>
public class BomItem
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; init; }
    
    [Required]
    public bool AddToService { get; init; }
    
    [Required]
    public int BomId { get; init; }
    
    public int? BomItemGroupId { get; init; }
    
    [Required]
    [StringLength(256)]
    public string Description { get; init; }
    
    [Required]
    public bool GroupDefault { get; init; }
    
    public decimal? MaxQty { get; init; }
    
    public decimal? MinQty { get; init; }
    
    [Required]
    public bool OneTimeItem { get; init; }
    
    public int? PartId { get; init; }
    
    public decimal? PriceAdjustment { get; init; }
    
    public int? ProductId { get; init; }
    
    [Required]
    public decimal Quantity { get; init; }
    
    [Required]
    public int SortIdConfig { get; init; }
    
    [Required]
    public bool Stage { get; init; }
    
    public int? StageBomId { get; init; }
    
    [Required]
    public int TypeId { get; init; }
    
    public int? UomId { get; init; }
    
    [Required]
    public bool UseItemLocation { get; init; }
    
    [Required]
    public bool VariableQty { get; init; }
    
    // TODO: Implement manual handling for the CustomFields as it's a JSON type
    [Column(TypeName="json")]
    public string? CustomFields { get; init; }
        
    [ForeignKey("bomId"), Required]
    public virtual Bom Bom { get; init; }
        
    [ForeignKey("bomItemGroupId")]
    public virtual BomItemGroup? BomItemGroup { get; init; }
        
    [ForeignKey("partId")]
    public virtual Part? Part { get; init; }
        
    [ForeignKey("typeId"), Required]
    public virtual BomItemType Type { get; init; }
        
    [ForeignKey("uomId")]
    public virtual Uom? Uom { get; init; }
}