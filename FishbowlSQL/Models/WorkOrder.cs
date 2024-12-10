// Generated from Fishbowl SQL Schema

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Runtime.CompilerServices;
using Microsoft.EntityFrameworkCore;

namespace FishbowlSQL.Models;

/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/wo.sql">Link</a> for
///     SQL script.
///     <br/>
///     See <a href="https://fishbowlhelp.com/files/database/tables/wo.html">Link</a> for
///     official Fishbowl documentation.
/// </summary>
public class WorkOrder
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; init; }
    
    public int? CalCategoryId { get; init; }
    
    public decimal? Cost { get; init; }
    
    public int? CustomerId { get; init; }
    
    public DateTimeOffset? DateCreated { get; init; }
    
    public DateTimeOffset? DateFinished { get; init; }
    
    public DateTimeOffset? DateLastModified { get; init; }
    
    public DateTimeOffset? DateScheduled { get; init; }
    
    public DateTimeOffset? DateScheduledToStart { get; init; }
    
    public DateTimeOffset? DateStarted { get; init; }
    
    public int? LocationGroupId { get; init; }
    
    public int? LocationId { get; init; }
    
    [Required]
    public int MoItemId { get; init; }
    
    public string? Note { get; init; }
    
    [Required]
    [StringLength(30)]
    public string Num { get; init; }
    
    [Required]
    public int PriorityId { get; init; }
    
    public int? QbClassId { get; init; }
    
    public int? QtyOrdered { get; init; }
    
    public int? QtyScrapped { get; init; }
    
    public int? QtyTarget { get; init; }
    
    [Required]
    public int StatusId { get; init; }
    
    [Required]
    public int UserId { get; init; }
    
    // TODO: Implement manual handling for the CustomFields as it's a JSON type
    [Column(TypeName="json")]
    public string CustomFields { get; init; }
    
    [ForeignKey("calCategoryId")]
    public virtual CalCategory? CalCategory { get; init; }
    
    [ForeignKey("customerId")]
    public virtual Customer? Customer { get; init; }
    
    [ForeignKey("locationId")]
    public virtual Location? Location { get; init; }
    
    [ForeignKey("locationGroupId")]
    public virtual LocationGroup? LocationGroup { get; init; }
    
    [ForeignKey("moItemId"), Required]
    public virtual ManufacturingOrderItem? MoItem { get; init; }
    
    [ForeignKey("priorityId"), Required]
    public virtual Priority Priority { get; init; }
    
    [ForeignKey("qbClassId")]
    public virtual QbClass? QbClass { get; init; }
    
    [ForeignKey("statusId"), Required]
    public virtual WorkOrderStatus WoStatus { get; init; }
    
    [ForeignKey("UserId"), Required]
    public virtual SysUser User { get; init; }
    
    public virtual ICollection<SysUser> AssignedUsers { get; set; }

    public static void BuildModel(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<WorkOrder>()
                    .HasOne(wo => wo.User)
                    .WithMany(u => u.OwnedWorkOrders)
                    .HasForeignKey(wo => wo.UserId)
                    .HasPrincipalKey(u => u.Id);
        
        modelBuilder.Entity<WorkOrder>()
                    .HasMany(wo => wo.AssignedUsers)
                    .WithMany(u => u.AssignedWorkOrders)
                    .UsingEntity(
                         "woassignedusers",
                         l => l.HasOne(typeof(SysUser)).WithMany().HasForeignKey("userId").HasPrincipalKey(nameof(Models.SysUser.Id)),
                         r => r.HasOne(typeof(WorkOrder)).WithMany().HasForeignKey("woId").HasPrincipalKey(nameof(Models.WorkOrder.Id)),
                         j => j.HasKey("userId", "woId"));

    }
}