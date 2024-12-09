// Generated from Fishbowl SQL Schema

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace FishbowlSQL.Models;

/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/part.sql">Link</a> for
///     SQL script.
///     <br/>
///     See <a href="https://fishbowlhelp.com/files/database/tables/part.html">Link</a> for
///     official Fishbowl documentation.
/// </summary>
public class Part : IBaseEntity
    {
        [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; init; }
        
        public string? AbcCode { get; init; }
        
        [StringLength(30)]
        public string? AccountingHash { get; init; }
        
        [StringLength(36)]
        public string? AccountingId { get; init; }
        
        [Required]
        public bool ActiveFlag { get; init; }
        
        public int? AdjustmentAccountId { get; init; }
        
        [StringLength(256)]
        public string? AlertNote { get; init; }
        
        [Required]
        public bool AlwaysManufacture { get; init; }
        
        public int? CogsAccountId { get; init; }
        
        [Required]
        public bool Configurable { get; init; }

        [Required] 
        public decimal ConsumptionRate { get; init; }
        
        [Required]
        public bool ControlledFlag { get; init; }
        
        public decimal? CycleCountTol { get; init; }
        
        public DateTimeOffset? DateCreated { get; init; }
        
        public DateTimeOffset? DateLastModified { get; init; }
        
        public int? DefaultBomId { get; init; }
        
        public int? DefaultOutsourcedReturnItemId { get; init; }
        
        public int? DefaultPoItemTypeId { get; init; }
        
        public int? DefaultProductId { get; init; }
        
        [StringLength(252)]
        public string? Description { get; init; }
        
        public string? Details { get; init; }
        
        public decimal? Height { get; init; }
        
        public int? InventoryAccountId { get; init; }
        
        [StringLength(100)]
        public string? LastChangedUser { get; init; }
        
        public int? LeadTime { get; init; }
        
        public decimal? Len { get; init; }
        
        [Required]
        public string Num { get; init; }
        
        public int? PartClassId { get; init; }
        
        [Required]
        public bool PickInUomOfPart { get; init; }
        
        public decimal? ReceivingTol { get; init; }
        
        [StringLength(15)]
        public string? Revision { get; init; }
        
        public int? ScrapAccountId { get; init; }
        
        [Required]
        public bool SerializedFlag { get; init; }
        
        public int? SizeUomId { get; init; }
        
        public decimal? StdCost { get; init; }
        
        public int? TaxId { get; init; }
        
        [Required]
        public bool TrackingFlag { get; init; }
        
        [Required]
        public int TypeId { get; init; }
        
        [Required]
        public int UomId { get; init; }
        
        [StringLength(31)]
        public string? Upc { get; init; }
        
        [StringLength(256)]
        public string? Url { get; init; }
        
        public int? VarianceAccountId { get; init; }
        
        public decimal? Weight { get; init; }
        
        public int? WeightUomId { get; init; }
        
        public decimal? Width { get; init; }
        
        // TODO: Implement manual handling for the CustomFields as it's a JSON type
        [Column(TypeName="json")]
        public string? CustomFields { get; init; }
        
        [ForeignKey("AdjustmentAccountId")]
        public virtual AsAccount? AdjustmentAccount { get; init; }
        
        [ForeignKey("DefaultBomId")]
        public virtual Bom? DefaultBom { get; init; }
        
        [ForeignKey("defaultPoItemTypeId")]
        public virtual PoItemType? DefaultPoItemType { get; init; }
        
        [ForeignKey("CogsAccountId")]
        public virtual AsAccount? CogsAccount { get; init; }
        
        [ForeignKey("defaultProductId")]
        public virtual Product? DefaultProduct { get; init; }
        
        [ForeignKey("InventoryAccountId")]
        public virtual AsAccount? InventoryAccount { get; init; }
        
        [ForeignKey("typeId")]
        public virtual PartType Type { get; init; }
        
        [ForeignKey("ScrapAccountId")]
        public virtual AsAccount ScrapAccount { get; init; }
        
        [ForeignKey("sizeUomId")]
        public virtual Uom SizeUom { get; init; }
        
        [ForeignKey("taxId")]
        public virtual TaxRate? Tax { get; init; }
        
        [ForeignKey("uomId")]
        public virtual Uom Uom { get; init; }
        
        [ForeignKey("varianceAccountId")]
        public virtual AsAccount? VarianceAccount { get; init; }
        
        [ForeignKey("weightUomId")]
        public virtual Uom? WeightUom { get; init; }
        
        [ForeignKey("defaultOutsourcedReturnItemId")]
        public virtual Part? DefaultOutsourcedReturnItem { get; init; }

        public static void BuildModel(ModelBuilder modelBuilder)
        {
            
        }
    }