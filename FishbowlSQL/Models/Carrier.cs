// Generated from Fishbowl SQL Schema

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;

/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/carrier.sql">Link</a> for
///     SQL script.
///     <br/>
///     See <a href="https://fishbowlhelp.com/files/database/tables/carrier.html">Link</a> for
///     official Fishbowl documentation.
/// </summary>
public class Carrier
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; init; }

    public bool? ActiveFlag { get; init; }

    [StringLength(256)] 
    public string? Description { get; init; }

    [StringLength(60)] 
    public string? Name { get; init; }

    public bool? ReadOnly { get; init; }

    [StringLength(4)] 
    public string? Scac { get; init; }
}