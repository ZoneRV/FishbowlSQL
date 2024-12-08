// Generated from Fishbowl SQL Schema

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;

/// <summary>
///     See
///     <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/fobpoint.sql">Link</a>
///     for SQL script.
///     <br/>
///     See <a href="https://fishbowlhelp.com/files/database/tables/fobpoint.html">Link</a> for
///     official Fishbowl documentation.
/// </summary>
public class FobPoint
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; init; }
    
    public bool? ActiveFlag { get; init; }

    [StringLength(15), Required] 
    public string Name { get; init; }
}