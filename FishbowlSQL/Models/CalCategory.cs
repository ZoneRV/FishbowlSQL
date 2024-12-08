// Generated from Fishbowl SQL Schema

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;


/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/calcategory.sql">Link</a> for
///     SQL script.
///     <br/>
///     See <a href="https://fishbowlhelp.com/files/database/tables/calcategory.html">Link</a> for
///     official Fishbowl documentation.
/// </summary>
public class CalCategory
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; init; }
    
    [StringLength(32)]
    public string? Color { get; init; }
    
    public DateTimeOffset? DateCreated { get; init; }
    
    public DateTimeOffset? DateLastModified { get; init; }
    
    [Required]
    public int LastChangedUserId { get; init; }
    
    [StringLength(128)]
    public string Name { get; init; }
    
    public int? ParentID { get; init; }
    
    public bool? ReadOnly { get; init; }
        
    [ForeignKey("LastChangedUserId"), Required]
    public virtual SysUser LastChangedUser { get; init; }
}