// Generated from Fishbowl SQL Schema

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;

/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/bomitemgroup.sql">Link</a> for
///     SQL script.
/// </summary>
public class BomItemGroup
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; init; }
    
    [Required]
    public int BomId { get; init; }
    
    [Required, StringLength(70)]
    public string Name { get; init; }
    
    [StringLength(256)]
    public string Prompt { get; init; }
    
    [Required]
    public int SortOrder { get; init; }

    [ForeignKey("BomId"), Required]
    public virtual Bom Bom { get; init; }
}