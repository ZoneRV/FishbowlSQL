// Generated from Fishbowl SQL Schema

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace FishbowlSQL.Models;

/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/accountgrouprelation.sql">Link</a> for
///     SQL script.
///     <br/>
///     See <a href="https://fishbowlhelp.com/files/database/tables/accountgrouprelation.html">Link</a> for
///     official Fishbowl documentation.
/// </summary>
public class WoAssignedUsers
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; init; }

    public int UserId { get; init; }
    
    public int WoId { get; init; }
    
    [ForeignKey("userId"), DeleteBehavior(DeleteBehavior.Restrict)]
    public virtual SysUser? User { get; init; }
    
    [ForeignKey("woId"), DeleteBehavior(DeleteBehavior.Restrict)]
    public virtual WorkOrder? WorkOrder { get; init; }
}