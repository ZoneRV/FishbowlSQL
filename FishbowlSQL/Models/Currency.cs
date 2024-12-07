// Generated from Fishbowl SQL Schema

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;

/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/currency.sql">Link</a> for
///     SQL script.
/// </summary>
public class Currency
{
    [Key]
    [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; init; }

    public bool? ActiveFlag { get; init; }

    [StringLength(3)] public string? Code { get; init; }

    public DateTimeOffset? DateCreated { get; init; }

    public DateTimeOffset? DateLastModified { get; init; }

    public bool? ExcludeFromUpdate { get; init; }

    public bool? HomeCurrency { get; init; }

    [Required] public int LastChangedUserId { get; init; }

    [StringLength(255)] public string? Name { get; init; }

    public double? Rate { get; init; }

    public int? Symbol { get; init; }

    [ForeignKey("LastChangedUserId")]
    [Required]
    public SysUser LastChangedUser { get; init; } = default(SysUser)!;
}