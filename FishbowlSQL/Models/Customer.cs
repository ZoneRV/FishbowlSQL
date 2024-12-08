// Generated from Fishbowl SQL Schema

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;

/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/customer.sql">Link</a> for
///     SQL script.
///     <br/>
///     See <a href="https://fishbowlhelp.com/files/database/tables/customer.html">Link</a> for
///     official Fishbowl documentation.
/// </summary>
public class Customer
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; init; }

    [Required] 
    public int AccountId { get; init; }

    [StringLength(30)] 
    public string? AccountingHash { get; init; }

    [StringLength(36)] 
    public string? AccountingId { get; init; }

    [Required] 
    public bool ActiveFlag { get; init; }

    public int? CarrierServiceId { get; init; }

    public decimal? CreditLimit { get; init; }

    public int? CurrencyId { get; init; }

    public decimal? CurrencyRate { get; init; }

    public DateTimeOffset? DateCreated { get; init; }

    public DateTimeOffset? DateLastModified { get; init; }

    public int? DefaultCarrierId { get; init; }

    [Required] 
    public int DefaultPaymentTermsId { get; init; }

    public int? DefaultPriorityId { get; init; }

    public int? DefaultSalesmanId { get; init; }

    [Required] 
    public int DefaultShipTermsId { get; init; }

    public int? JobDepth { get; init; }

    [StringLength(100)] 
    public string? LastChangedUser { get; init; }

    [StringLength(41), Required] 
    public string Name { get; init; }

    [StringLength(256)] 
    public string? Note { get; init; }

    [StringLength(30), Required] 
    public string Number { get; init; }

    public int? ParentId { get; init; }

    public int? QbClassId { get; init; }

    [Required] 
    public int StatusId { get; init; }

    public int? SysUserId { get; init; }

    [Required] 
    public bool TaxExempt { get; init; }

    [StringLength(30)] 
    public string? TaxExemptNumber { get; init; }

    public int? TaxRateId { get; init; }

    [Required] 
    public bool ToBeEmailed { get; init; }

    [Required] 
    public bool ToBePrinted { get; init; }

    [StringLength(256)] 
    public string? Url { get; init; }

    public int? IssuableStatusId { get; init; }

    // TODO: Implement manual handling for the CustomFields as it's a JSON type
    [Column(TypeName="json")]
    public string? CustomFields { get; init; }

    [ForeignKey("accountId"), Required] 
    public virtual Account Account { get; init; }

    [ForeignKey("carrierServiceId")] 
    public virtual CarrierService? CarrierService { get; init; }

    [ForeignKey("currencyId")] 
    public virtual Currency? Currency { get; init; }

    [ForeignKey("DefaultCarrierId")] 
    public virtual Carrier? DefaultCarrier { get; init; }

    [ForeignKey("DefaultPaymentTermsId"), Required]
    public virtual PaymentTerms DefaultPaymentTerms { get; init; }

    [ForeignKey("defaultPriorityId")]
    public virtual Priority? DefaultPriority { get; init; } 

    [ForeignKey("parentId")] 
    public virtual Customer? Parent { get; init; }

    [ForeignKey("qbClassId")] 
    public virtual QbClass? QBClass { get; init; }

    [ForeignKey("DefaultShipTermsId"), Required]
    public virtual ShipTerms DefaultShipTerms { get; init; }

    [ForeignKey("IssuableStatusId")] 
    public virtual IssuableStatus? IssuableStatus { get; init; }
}