using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;

/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/bominstructionitem.sql">Link</a> for
///     SQL script.
///     <br/>
///     See <a href="https://fishbowlhelp.com/files/database/tables/bominstructionitem.html">Link</a> for
///     official Fishbowl documentation.
/// </summary>
public class BOMInstructionItem
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public long Id { get; set; }

    [Required]
    public int BomId { get; set; }

    [MaxLength(256)]
    public string? Description { get; set; }

    public string? Details { get; set; }

    [Required]
    [MaxLength(256)]
    public string Name { get; set; }

    [Required]
    public int SortOrder { get; set; }

    [MaxLength(256)]
    public string? Url { get; set; }

    // TODO: Implement manual handling for the CustomFields as it's a JSON type
    [Column(TypeName="json")]
    public string CustomFields { get; init; }
        
    [ForeignKey("BomId"), Required]
    public virtual BillOfMaterials Bom { get; set; }
}