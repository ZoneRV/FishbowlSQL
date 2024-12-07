// Generated from Fishbowl SQL Schema

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;

/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/qbclass.sql">Link</a> for
///     SQL script.
/// </summary>
public class QbClass
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; init; }

    [StringLength(30)] 
    public string? AccountingHash { get; init; }

    [StringLength(36)] 
    public string? AccountingId { get; init; }

    [Required] 
    public bool ActiveFlag { get; init; }

    public DateTimeOffset? DateCreated { get; init; }

    public DateTimeOffset? DateLastModified { get; init; }

    [StringLength(31), Required] 
    public string Name { get; init; }

    [Required] 
    public int ParentId { get; init; }

    [ForeignKey("ParentId"), Required] 
    public virtual QbClass Parent { get; init; }
}