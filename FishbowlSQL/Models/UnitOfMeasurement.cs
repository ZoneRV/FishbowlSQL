// Generated from Fishbowl SQL Schema

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;

/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/uom.sql">Link</a> for
///     SQL script.
///     <br/>
///     See <a href="https://fishbowlhelp.com/files/database/tables/uom.html">Link</a> for
///     official Fishbowl documentation.
/// </summary>
public class UnitOfMeasurement
{
    [Key,DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; init; }
    
    [Required]
    public bool ActiveFlag { get; init; }
    
    [Required]
    [StringLength(10)]
    public string Code { get; init; }
    
    [Required]
    public bool DefaultRecord { get; init; }
    
    [Required]
    [StringLength(256)]
    public string Description { get; init; }
    
    [Required]
    public bool Integral { get; init; }
    
    [Required]
    [StringLength(30)]
    public string Name { get; init; }
    
    [Required]
    public bool ReadOnly { get; init; }
    
    [Required]
    public int UomType { get; init; }

    [ForeignKey("UomType"), Required]
    public virtual UnitOfMeasurementType UnitOfMeasurementType { get; init; }
}