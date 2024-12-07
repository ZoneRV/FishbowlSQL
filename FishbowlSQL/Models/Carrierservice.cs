// Generated from Fishbowl SQL Schema

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;

/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/carrierservice.sql">Link</a>
///     for SQL script.
/// </summary>
public class CarrierService
{
    [Key]
    [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; init; }

    [Required] public bool ActiveFlag { get; init; }

    [Required] public int CarrierId { get; init; }

    [StringLength(255)] [Required] public string Code { get; init; } = default(string)!;

    [StringLength(255)] [Required] public string Name { get; init; } = default(string)!;

    [Required] public bool ReadOnly { get; init; }

    [ForeignKey("CarrierId")] [Required] public Carrier Carrier { get; init; }
}