// Generated from Fishbowl SQL Schema

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;

/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/locationgroup.sql">Link</a> for
///     SQL script.
///     <br/>
///     See <a href="https://fishbowlhelp.com/files/database/tables/locationgroup.html">Link</a> for
///     official Fishbowl documentation.
/// </summary>
public class LocationGroup
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; init; }
    
    [Required]
    public bool ActiveFlag { get;init; }
    
    public DateTimeOffset? DateLastModified { get;init; }
    
    [Required, StringLength(30)]
    public string Name { get;init; }
    
    public int? QbClassId { get;init; }
        
    [ForeignKey("QbClassId")]
    public virtual QbClass? QbClass { get; init; }
}