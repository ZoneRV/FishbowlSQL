// Generated from Fishbowl SQL Schema

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;

/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/asaccount.sql">Link</a> for
///     SQL script.
///     <br/>
///     See <a href="https://fishbowlhelp.com/files/database/tables/asaccount.html">Link</a> for
///     official Fishbowl documentation.
/// </summary>
public class AsAccount
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; init; }
        
    [StringLength(36)]
    public string? AccountNumber { get; init; }

    [StringLength(30)]
    public string? AccountingHash { get; init; }

    [StringLength(36)]
    public string? AccountingId { get; init; }
        
    public bool? ActiveFlag { get; init; } // Nullable as defined in MySQL script

    public DateTimeOffset? DateCreated { get; init; }
        
    public DateTimeOffset? DateLastModified { get; init; }

    [StringLength(155), Required]
    public string Name { get; init; }
        
    public int? TypeId { get; init; }

    [ForeignKey("TypeId")]
    public virtual AsAccountType AsAccountType { get; init; }
}