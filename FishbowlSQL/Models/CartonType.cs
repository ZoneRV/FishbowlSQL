// Generated from Fishbowl SQL Schema

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;

/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/cartontype.sql">Link</a> for
///     SQL script.
/// </summary>
public class CartonType
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; init; }
    
    [Required]
    public bool DefaultFlag { get; init; }
    
    [StringLength(252)]
    public string? Description { get; init; }
    
    public decimal? Height { get; init; }
    
    public decimal? Len { get; init; }
    
    [Required]
    [StringLength(70)]
    public string Name { get; init; }
    
    [StringLength(30)]
    public string SizeUOM { get; init; }
    
    public decimal? Width { get; init; }
}