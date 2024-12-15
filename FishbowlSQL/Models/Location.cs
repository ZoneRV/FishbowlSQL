// Generated from Fishbowl SQL Schema

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace FishbowlSQL.Models;

/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/location.sql">Link</a> for
///     SQL script.
///     <br/>
///     See <a href="https://fishbowlhelp.com/files/database/tables/location.html">Link</a> for
///     official Fishbowl documentation.
/// </summary>
public class Location
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public ulong Id { get; init; }
    
    [Required]
    public bool ActiveFlag { get; init; }
    
    [Required]
    public bool CountedAsAvailable { get; init; }
    
    public DateTimeOffset? DateLastModified { get; init; }
    
    public int? DefaultCustomerId { get; init; }
    
    [Required]
    public bool DefaultFlag { get; init; }
    
    public int? DefaultVendorId { get; init; }
    
    [StringLength(252)]
    public string? Description { get; init; }
    
    [Required]
    public int LocationGroupId { get; init; }
    
    [Required]
    [StringLength(30)]
    public string Name { get; init; }
    
    public int? ParentId { get; init; }
    
    [Required]
    public bool Pickable { get; init; }
    
    [Required]
    public bool Receivable { get; init; }
    
    public int? SortOrder { get; init; }
    
    [Required]
    public int TypeId { get; init; }
    
    // TODO: Implement manual handling for the CustomFields as it's a JSON type
    [Column(TypeName="json")]
    public string? CustomFields { get; init; }
        
    // Navigation properties
    
    [ForeignKey("defaultCustomerId")]
    public virtual Customer? DefaultCustomer { get; init; }
    
    [ForeignKey("defaultVendorId")]
    public virtual Vendor? DefaultVendor { get; init; }
    
    [ForeignKey("locationGroupId"), Required]
    public virtual LocationGroup LocationGroup { get; init; }
    
    [ForeignKey("typeId"), Required]
    public virtual LocationType Type { get;init; }
    
    public virtual ICollection<BOMToLocation> Boms { get; set; }
}