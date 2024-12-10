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
public class AccountGroupRelation
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; init; }

    public int? AccountId { get; init; }
    
    public int? GroupId { get; init; }
    
    [ForeignKey("accountId"), DeleteBehavior(DeleteBehavior.Restrict)]
    public virtual Account? Account { get; init; }
    
    [ForeignKey("groupId"), DeleteBehavior(DeleteBehavior.Restrict)]
    public virtual AccountGroup? AccountGroup { get; init; }
}