using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;

/// <summary>
///     See
///     <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/po.sql">Link</a>
///     for SQL script.
///     <br/>
///     See <a href="https://fishbowlhelp.com/files/database/tables/po.html">Link</a> for
///     official Fishbowl documentation.
/// </summary>
[Table("PO")]
public class PickingOrder
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; init; }

    [MaxLength(100)]
    public string? Buyer { get; init; }

    [Required]
    public int CarrierId { get; init; }

    public int? CarrierServiceId { get; init; }

    public int? CurrencyId { get; init; }

    public string? CustomerSO { get; init; }

    public DateTimeOffset? DateCompleted { get; init; }
    
    public DateTimeOffset? DateConfirmed { get; init; }
    
    public DateTimeOffset? DateFirstShip { get; init; }

    public DateTimeOffset? DateCreated { get; init; }

    public DateTimeOffset? DateIssued { get; init; }

    public DateTimeOffset? DateLastModified { get; init; }

    public DateTimeOffset? DateRevision { get; init; }

    [MaxLength(30)] public string? DeliverTo { get; init; }

    [MaxLength(256)] public string? Email { get; init; }

    public int FobPointId { get; init; }

    public int? IssuedByUserId { get; init; }

    [Required]
    public int LocationGroupId { get; init; }

    public string? Note { get; init; }

    [Required]
    [StringLength(25)]
    public string Num { get; init; }

    [Required]
    public int PaymentTermsId { get; init; }

    [StringLength(256)]
    public string Phone { get; init; }

    public int? QbClassId { get; init; }

    [StringLength(90)]
    public string RemitAddress { get; init; }

    [StringLength(30)]
    public string? RemitCity { get; init; }

    public int? RemitCountryId { get; init; }

    public int? RemitStateId { get; init; }

    [StringLength(60)]
    public string? RemitToName { get; init; }

    [StringLength(10)]
    public string? RemitZip { get; init; }
    
    public int? RevisionNum { get; init; }

    [Required]
    public int ShipTermsId { get; init; }

    [StringLength(90)]
    public string? ShipToAddress { get; init; }

    [StringLength(30)]
    public string? ShipToCity { get; init; }

    public int? ShipToCountryId { get; init; }

    [StringLength(60)]
    public string? ShipToName { get; init; }

    public int? ShipToStateId { get; init; }

    [StringLength(10)]
    public string? ShipToZip { get; init; }

    [Required]
    public int StatusId { get; init; }

    public int? TaxRateId { get; init; }

    [StringLength(31)]
    public string TaxRateName { get; init; }

    public bool TotalIncludesTax { get; set; }

    public decimal? TotalTax { get; set; }

    public int TypeId { get; set; }

    [StringLength(256)]
    public string? Url { get; init; }

    [StringLength(100)]
    public string? UserName { get; init; }

    [StringLength(30)]
    public string? VendorContact { get; init; }

    public int VendorId { get; init; }

    [StringLength(25)]
    public string? VendorSO { get; init; }

    // TODO: Implement manual handling for the CustomFields as it's a JSON type
    [Column(TypeName = "json")]
    public string? CustomFields { get; init; }

    [ForeignKey("locationGroupId"), Required]
    public virtual LocationGroup LocationGroup { get; init; }

    [ForeignKey("carrierId")]
    public virtual Carrier Carrier { get; init; }

    [ForeignKey("fobPointId")]
    public virtual FobPoint FobPoint { get; init; }

    [ForeignKey("paymentTermsId")]
    public virtual PaymentTerms PaymentTerms { get; init; }

    [ForeignKey("buyerId"), Required]
    public virtual SysUser POBuyer { get; init; }

    [ForeignKey("issuedByUserId"), Required]
    public virtual SysUser IssuedbyUser { get; init; }

    [ForeignKey("taxRateId")]
    public virtual TaxRate TaxRate { get; init; }

    [ForeignKey("qbClassId")]
    public virtual QbClass QbClass { get; init; }

    [ForeignKey("carrierServiceId")]
    public virtual CarrierService CarrierService { get; init; }

    [ForeignKey("vendorId")]
    public virtual Vendor Vendor { get; init; }

    [ForeignKey("typeId")]
    public virtual PoType   PoType   { get; init; }
    [ForeignKey("statusId")]
    public virtual PoStatus PoStatus { get; init; } 

    [ForeignKey("currencyId")]
    public virtual Currency Currency { get; init; }

    [ForeignKey("shipTermsId")]
    public ShipTerms ShipTerms { get; init; }
}