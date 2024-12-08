// Generated from Fishbowl SQL Schema

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;

/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/mo.sql">Link</a> for
///     SQL script.
///     <br/>
///     See <a href="https://fishbowlhelp.com/files/database/tables/mo.html">Link</a> for
///     official Fishbowl documentation.
/// </summary>
public class Mo
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; init; }
    
    public DateTimeOffset? DateCompleted { get;init; }
    
    public DateTimeOffset? DateCreated { get;init; }
    
    public DateTimeOffset? DateIssued { get;init; }
    
    public DateTimeOffset? DateLastModified { get;init; }
    
    public DateTimeOffset? DateScheduled { get;init; }
    
    [Required]
    public int LocationGroupId { get;init; }
    
    public string? Note { get;init; }
    
    [Required]
    [StringLength(25)]
    public string Num { get;init; }
    
    public int? QbClassId { get;init; }
    
    [Required]
    public int Revision { get;init; }
    
    public int? SoId { get;init; }
    
    [Required]
    public int StatusId { get;init; }
    
    [StringLength(256)]
    public string Url { get;init; }
    
    [Required]
    public int UserId { get;init; }
    
    // TODO: Implement manual handling for the CustomFields as it's a JSON type
    [Column(TypeName="json")]
    public string? CustomFields { get;init; }
        
    [ForeignKey("locationGroupId"), Required]
    public virtual LocationGroup LocationGroup { get; init; }
        
    [ForeignKey("qbClassId")]
    public virtual QbClass? QbClass { get; init; }
        
    [ForeignKey("soId")]
    public virtual So? So { get; init; }
        
    [ForeignKey("statusId"), Required]
    public virtual MoStatus Status { get; init; }
        
    [ForeignKey("userId"), Required]
    public virtual SysUser User { get; init; }
}