// Generated from Fishbowl SQL Schema

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;

/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/itemadjust.sql">Link</a> for
///     SQL script.s
/// </summary>
public class ItemAdjust
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; init; }
    
    [Required]
    public bool ActiveFlag { get; init; }
    
    public decimal? Amount { get; init; }
    
    [StringLength(256)]
    public string Description { get; init; }
    
    public int? ExpenseAsAccountId { get; init; }
    
    public int? IncomeAsAccountId { get; init; }
    
    [Required]
    [StringLength(31)]
    public string Name { get; init; }
    
    public decimal? Percentage { get; init; }
    
    public int? TaxRateId { get; init; }
    
    [Required]
    public bool TaxableFlag { get; init; }
    
    [Required]
    public int TypeId { get; init; }

    [ForeignKey("expenseAsAccountId")]
    public virtual AsAccount? ExpenseAsAccount { get; init; }

    [ForeignKey("incomeAsAccountId")]
    public virtual AsAccount? IncomeAsAccount { get; init; }

    [ForeignKey("taxRateId")]
    public virtual TaxRate? TaxRate { get; init; }

    [ForeignKey("typeId"), Required]
    public virtual ItemAdjustType Type { get; init; }
}