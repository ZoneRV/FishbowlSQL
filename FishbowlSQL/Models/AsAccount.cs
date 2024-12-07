// Generated from Fishbowl SQL Schema

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;

/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/asaccount.sql">Link</a> for
///     SQL script.
/// </summary>
public class AsAccount
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; set; }
        
    [StringLength(36)]
    public string? AccountNumber { get; set; }

    [StringLength(30)]
    public string? AccountingHash { get; set; }

    [StringLength(36)]
    public string? AccountingId { get; set; }
        
    public bool? ActiveFlag { get; set; } // Nullable as defined in MySQL script

    public DateTimeOffset? DateCreated { get; set; }
        
    public DateTimeOffset? DateLastModified { get; set; }

    [StringLength(155), Required]
    public string Name { get; set; }
        
    public int? TypeId { get; set; }

    [ForeignKey("TypeId")]
    public virtual AsAccountType AsAccountType { get; set; }
}