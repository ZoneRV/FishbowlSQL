// Generated from Fishbowl SQL Schema

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;

/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/shipterms.sql">Link</a> for
///     SQL script.
/// </summary>
public class ShipTerms
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; init; }

    [Required] 
    public bool ActiveFlag { get; init; }

    [StringLength(30), Required] 
    public string Name { get; init; }

    [Required] 
    public bool ReadOnly { get; init; }
}