// Generated from Fishbowl SQL Schema

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;

/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/paymentterms.sql">Link</a>
///     for SQL script.
/// </summary>
public class PaymentTerms
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; init; }

    public string? AccountingHash { get; init; }

    public string? AccountingId { get; init; }

    [Required] 
    public bool ActiveFlag { get; init; }

    public DateTimeOffset? DateCreated { get; init; }

    public DateTimeOffset? DateLastModified { get; init; }

    public bool? DefaultTerm { get; init; }

    public double? Discount { get; init; }

    public int? DiscountDays { get; init; }

    [StringLength(31), Required] 
    public string Name { get; init; }

    public int? NetDays { get; init; }

    public int? NextMonth { get; init; }

    [Required] 
    public bool ReadOnly { get; init; }

    [Required] 
    public int TypeId { get; init; }

    [ForeignKey("TypeId"), Required]
    public virtual PaymentTermsType PaymentTermsType { get; init; } = default(PaymentTermsType)!;
}