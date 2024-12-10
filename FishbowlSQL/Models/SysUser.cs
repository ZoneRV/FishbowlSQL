// Generated from Fishbowl SQL Schema

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;

/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/sysuser.sql">Link</a> for
///     SQL script.
///     <br/>
///     See <a href="https://fishbowlhelp.com/files/database/tables/sysuser.html">Link</a> for
///     official Fishbowl documentation.
/// </summary>
public class SysUser
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; init; }

    [Required] 
    public bool ActiveFlag { get; init; }

    [StringLength(255)] 
    public string? Email { get; init; }

    [StringLength(15)] 
    public string? FirstName { get; init; }

    [StringLength(5)] 
    public string? Initials { get; init; }

    [StringLength(15)] 
    public string? LastName { get; init; }

    [StringLength(255)] 
    public string? Phone { get; init; }

    [StringLength(100), Required] 
    public string UserName { get; init; }

    [StringLength(255), Required] 
    public string UserPwd { get; init; }

    public DateTimeOffset? PasswordLastModified { get; init; }

    /*
    For the newer DB Schema
     
    [StringLength(64), Required] 
    public string MfaSecret { get; init; }

    [Required] 
    public int MfaBypassCounter { get; init; }
    */

    // TODO: Implement manual handling for the CustomFields as it's a JSON type
    [Column(TypeName="json")]
    public string? CustomFields { get; init; }
    
    //TODO Test the following seperate
    public virtual ICollection<WorkOrder> AssignedWorkOrders { get; set; }
    public virtual ICollection<WorkOrder> OwnedWorkOrders { get; set; }
    
}