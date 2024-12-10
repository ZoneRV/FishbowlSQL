using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace FishbowlSQL.Models;

/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/bom.sql">Link</a> for
///     SQL script.
///     <br/>
///     See <a href="https://fishbowlhelp.com/files/database/tables/bom.html">Link</a> for
///     official Fishbowl documentation.
/// </summary>
public class BillOfMaterials : IBaseEntity
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; init; }
    
    [Required]
    public bool ActiveFlag { get; init; }
    
    public int? AutoCreateTypeId { get; init; }
    
    [Required]
    public bool Configurable { get; init; }
    
    public DateTimeOffset? DateCreated { get; init; }
    
    public DateTimeOffset? DateLastModified { get; init; }
    
    public int? DefaultCalCategoryId { get; init; }
    
    [Required]
    [StringLength(252)]
    public string Description { get; init; }
    
    public int? EstimatedDuration { get; init; }
    
    public string Note { get; init; }
    
    [Required]
    [StringLength(70)]
    public string Num { get; init; }
    
    [Required]
    public bool PickFromLocation { get; init; }
    
    public int? QbClassId { get; init; }
    
    [Required]
    [StringLength(31)]
    public string Revision { get; init; }
    
    [StringLength(41)]
    public string StatisticsDateRange { get; init; }
    
    [Required]
    [StringLength(256)]
    public string Url { get; init; }
    
    [Required]
    public int UserId { get; init; }
    
    // TODO: Implement manual handling for the CustomFields as it's a JSON type
    [Column(TypeName="json")]
    public string CustomFields { get; init; }
        
    // Navigation properties
    [ForeignKey("AutoCreateTypeId")]
    public virtual BOMAutoCreateType? AutoCreateType { get; init; }
    
    [ForeignKey("DefaultCalCategoryId")]
    public virtual CalCategory? DefaultCalCategory { get; init; }
    
    [ForeignKey("QbClassId")]
    public virtual QbClass? QbClass { get; init; }
    
    [ForeignKey("userId"), Required]
    public virtual SysUser User { get; init; }
    
    public virtual ICollection<BOMInstructionItem> BomInstructionItems { get; set; }
    //public virtual ICollection<BomInstructionItemAudit> BomInstructionItemAudits { get; set; } 
    public virtual ICollection<BOMItem> BomItems { get; set; }
    //public virtual ICollection<BomItemAudit> BomItemAudits { get; set; }
    public virtual ICollection<BOMItemGroup> BomItemGroups { get; set; }
    //public virtual ICollection<BomItemGroupAudit> BomItemGroupAudits { get; set; }
    public virtual ICollection<BOMToLocation> BomToLocations { get; set; } 
    //public virtual ICollection<BomToLocationAudit> BomToLocationAudits { get; set; } 
    public virtual ICollection<ManufacturingOrderItem> MoItems { get; set; }
    //public virtual ICollection<MoItemAudit> MoItemAudits { get; set; }
    public virtual ICollection<Part> DefaultedParts { get; set; }
    
    public static void BuildModel(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<BillOfMaterials>()
            .HasMany(b => b.BomInstructionItems)
            .WithOne(bii => bii.Bom)
            .HasForeignKey(f => f.BomId);
        
        modelBuilder.Entity<BillOfMaterials>()
            .HasMany(b => b.BomItems)
            .WithOne(bi => bi.Bom)
            .HasForeignKey(f => f.BomId)
            .HasPrincipalKey(b => b.Id);
        
        modelBuilder.Entity<BillOfMaterials>()
            .HasMany(b => b.BomItemGroups)
            .WithOne(big => big.Bom)
            .HasForeignKey(f => f.BomId)
            .HasPrincipalKey(b => b.Id);
        
        modelBuilder.Entity<BillOfMaterials>()
            .HasMany(b => b.BomToLocations)
            .WithOne(bl => bl.Bom)
            .HasForeignKey(f => f.BomId)
            .HasPrincipalKey(b => b.Id);
        
        modelBuilder.Entity<BillOfMaterials>()
            .HasMany(b => b.MoItems)
            .WithOne(mi => mi.Bom)
            .HasForeignKey(f => f.BomId)
            .HasPrincipalKey(b => b.Id);
        
        modelBuilder.Entity<BillOfMaterials>()
            .HasMany(b => b.DefaultedParts)
            .WithOne(mi => mi.DefaultBom)
            .HasForeignKey(f => f.DefaultBomId)
            .HasPrincipalKey(b => b.Id);
    }
}