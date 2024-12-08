using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;

/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/bomtolocation.sql">Link</a> for
///     SQL script.
///     <br/>
///     See <a href="https://fishbowlhelp.com/files/database/tables/bomtolocation.html">Link</a> for
///     official Fishbowl documentation.
/// </summary>
public class BomToLocation
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; init; }
    
    [Required]
    public int BomId { get; set; }
    
    [Required]
    public int LocationGroupId { get; set; }
    
    [Required]
    public int LocationId { get; set; }
    
    [ForeignKey("bomId"), Required]
    public virtual Bom Bom { get; set; }
    
    [ForeignKey("locationGroupId"), Required]
    public virtual LocationGroup LocationGroup { get; set; }
    
    [ForeignKey("locationId"), Required]
    public virtual Location Location { get; set; }
}