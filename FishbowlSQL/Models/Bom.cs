using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;

/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/bom.sql">Link</a> for
///     SQL script.
/// </summary>
public class Bom
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; init; }
    
    [Required]
    public bool ActiveFlag { get; init; }
    
    public int? AutoCreateTypeId { get; init; }
    
    [Required]
    public bool Configurable { get; init; }
    
    public DateTimeOffset? DateCreated { get; init; }
    
    public DateTimeOffset? DateLastModified { get; init; }
    
    public int? DefaultCalCategoryId { get; init; }
    
    [Required]
    [StringLength(252)]
    public string Description { get; init; }
    
    public int? EstimatedDuration { get; init; }
    
    public string Note { get; init; }
    
    [Required]
    [StringLength(70)]
    public string Num { get; init; }
    
    [Required]
    public bool PickFromLocation { get; init; }
    
    public int? QbClassId { get; init; }
    
    [Required]
    [StringLength(31)]
    public string Revision { get; init; }
    
    [StringLength(41)]
    public string StatisticsDateRange { get; init; }
    
    [Required]
    [StringLength(256)]
    public string Url { get; init; }
    
    [Required]
    public int UserId { get; init; }
    
    // TODO: Implement manual handling for the CustomFields as it's a JSON type
    [Column(TypeName="json")]
    public string CustomFields { get; init; }
        
    // Navigation properties
    [ForeignKey("AutoCreateTypeId")]
    public virtual BomAutoCreateType? AutoCreateType { get; init; }
    
    [ForeignKey("DefaultCalCategoryId")]
    public virtual CalCategory? DefaultCalCategory { get; init; }
    
    [ForeignKey("QbClassId")]
    public virtual QbClass? QbClass { get; init; }
    
    [ForeignKey("userId"), Required]
    public virtual SysUser User { get; init; }
}