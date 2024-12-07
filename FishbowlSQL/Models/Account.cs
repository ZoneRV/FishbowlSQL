// Generated from Fishbowl SQL Schema

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;

/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/account.sql">Link</a> for
///     SQL script.
/// </summary>
public class Account
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; init; }

    public int? TypeId { get; init; }

    [ForeignKey("TypeId")] 
    public virtual AccountType? AccountType { get; init; }
}