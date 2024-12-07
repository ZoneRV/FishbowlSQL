// Generated from Fishbowl SQL Schema

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;

/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/OrderType.sql">Link</a> for
///     SQL script.
/// </summary>
public class OrderType
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; set; }

    [StringLength(15), Required]
    public string Name { get; set; }
}