// Generated from Fishbowl SQL Schema

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;
/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/asaccounttype.sql">Link</a> for
///     SQL script.
/// </summary>
public class AsAccountType
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; set; }

    [StringLength(31), Required]
    public string Name { get; set; }
}