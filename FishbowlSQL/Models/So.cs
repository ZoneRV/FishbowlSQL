using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;

/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/so.sql">Link</a> for
///     SQL script.s
/// </summary>
public class So
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; init; }
    
    [StringLength(90)]
    public string? BillToAddress { get; init; }
    
    [StringLength(30)]
    public string? BillToCity { get; init; }
    
    public int? BillToCountryId { get; init; }
    
    [StringLength(60)]
    public string? BillToName { get; init; }
    
    public int? BillToStateId { get; init; }
    
    [StringLength(10)]
    public string? BillToZip { get; init; }
    
    public int? CalCategoryId { get; init; }
    
    [Required]
    public int CarrierId { get; init; }
    
    public int? CarrierServiceId { get; init; }
    
    public decimal? Cost { get; init; }
    
    public int? CreatedByUserId { get; init; }
    
    public int? CurrencyId { get; init; }
    
    public double? CurrencyRate { get; init; }
    
    [StringLength(30)]
    public string CustomerContact { get; init; }
    
    [Required]
    public int CustomerId { get; init; }
    
    [StringLength(25)]
    public string CustomerPO { get; init; }
    
    public DateTimeOffset? DateCalStart { get; init; }
    
    public DateTimeOffset? DateCalEnd { get; init; }
    
    public DateTimeOffset? DateCompleted { get; init; }
    
    public DateTimeOffset? DateCreated { get; init; }
    
    public DateTimeOffset? DateExpired { get; init; }
    
    public DateTimeOffset? DateFirstShip { get; init; }
    
    public DateTimeOffset? DateIssued { get; init; }
    
    public DateTimeOffset? DateLastModified { get; init; }
    
    public DateTimeOffset? DateRevision { get; init; }
    
    [StringLength(256)]
    public string? Email { get; init; }
    
    public decimal? EstimatedTax { get; init; }
    
    [Required]
    public int FobPointId { get; init; }
    
    [Required]
    public int LocationGroupId { get; init; }
    
    public decimal? McTotalTax { get; init; }
    
    public string Note { get; init; }
    
    [Required]
    [StringLength(25)]
    public string Num { get; init; }
    
    [StringLength(256)]
    public string PaymentLink { get; init; }
    
    [Required]
    public int PaymentTermsId { get; init; }
    
    [StringLength(256)]
    public string Phone { get; init; }
    
    [Required]
    public int PriorityId { get; init; }
    
    public int? QbClassId { get; init; }
    
    public int? RegisterId { get; init; }
    
    [Required]
    public bool ShipToResidential { get; init; }
    
    public int? RevisionNum { get; init; }
    
    [StringLength(100)]
    public string Salesman { get; init; }
    
    [Required]
    public int SalesmanId { get; init; }
    
    [StringLength(5)]
    public string? SalesmanInitials { get; init; }
    
    public int? ShipTermsId { get; init; }
    
    [StringLength(90)]
    public string? ShipToAddress { get; init; }
    
    [StringLength(30)]
    public string? ShipToCity { get; init; }
    
    public int? ShipToCountryId { get; init; }
    
    [StringLength(60)]
    public string ShipToName { get; init; }
    
    public int? ShipToStateId { get; init; }
    
    [StringLength(10)]
    public string? ShipToZip { get; init; }
    
    [Required]
    public int StatusId { get; init; }
    
    public double? TaxRate { get; init; }
    
    public int? TaxRateId { get; init; }
    
    [StringLength(31)]
    public string? TaxRateName { get; init; }
    
    [Required]
    public bool ToBeEmailed { get; init; }
    
    [Required]
    public bool ToBePrinted { get; init; }
    
    [Required]
    public bool TotalIncludesTax { get; init; }
    
    public decimal? TotalTax { get; init; }
    
    [Required]
    public decimal SubTotal { get; init; }
    
    [Required]
    public decimal TotalPrice { get; init; }
    
    [Required]
    public int TypeId { get; init; }
    
    [StringLength(256)]
    public string? Url { get; init; }
    
    [StringLength(100)]
    public string? Username { get; init; }
    
    [StringLength(25)]
    public string? VendorPO { get; init; }
    
    // TODO: Implement manual handling for the CustomFields as it's a JSON type
    [Column(TypeName="json")]
    public string? CustomFields { get; init; }

    [ForeignKey("carrierServiceId")]
    public virtual Carrier? Carrier { get; init; }

    [ForeignKey("carrierId"), Required]
    public virtual CarrierService CarrierService { get; init; }

    [ForeignKey("currencyId")]
    public virtual Currency? Currency { get; init; }

    [ForeignKey("customerId"), Required]
    public virtual Customer Customer { get; init; }

    [ForeignKey("fobPointId"), Required]
    public virtual FobPoint FobPoint { get; init; }

    [ForeignKey("locationGroupId"), Required]
    public virtual LocationGroup LocationGroup { get; init; }

    [ForeignKey("paymentTermsId"), Required]
    public virtual PaymentTerms PaymentTerms { get; init; }

    [ForeignKey("priorityId"), Required]
    public virtual Priority Priority { get; init; }

    [ForeignKey("qbClassId")]
    public virtual QbClass? QbClass { get; init; }

    [ForeignKey("shipTermsId")]
    public virtual ShipTerms? ShipTerms { get; init; }

    [ForeignKey("statusId"), Required]
    public virtual SoStatus Status { get; init; }

    [ForeignKey("salesmanId"), Required]
    public virtual SysUser SalesmanUser { get; init; }

    [ForeignKey("taxRateId")]
    public virtual TaxRate? TaxRateTable { get; init; } //TODO Figure out a better name for the TaxRate double ups

    [ForeignKey("typeId"), Required]
    public virtual SoType Type { get; init; }

    [ForeignKey("calCategoryId")]
    public virtual CalCategory? CalCategory { get; init; }

    [ForeignKey("createdByUserId")]
    public virtual SysUser CreatedByUser { get; init; }
}