using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;

/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/woinstruction.sql">Link</a> for
///     SQL script.
///     <br/>
///     See <a href="https://fishbowlhelp.com/files/database/tables/woinstruction.html">Link</a> for
///     official Fishbowl documentation.
/// </summary>
public class WorkOrderInstruction
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public long Id { get; set; }

    public long? BomInstructionItemId { get; set; }

    public DateTimeOffset? DateFirstReady { get; set; }

    public DateTimeOffset? DateLastFulfilled { get; set; }

    [MaxLength(256)]
    public string? Description { get; set; }

    public string? Details { get; set; }

    [Required]
    [MaxLength(256)]
    public string Name { get; set; }

    public int? QtyFulfilled { get; set; } = 0;

    public int? QtyReady { get; set; } = 0;

    [Required]
    public int SortOrder { get; set; }

    [MaxLength(256)]
    public string? Url { get; set; }

    [Required]
    public int WoId { get; set; }

    // TODO: Implement manual handling for the CustomFields as it's a JSON type
    [Column(TypeName="json")]
    public string CustomFields { get; init; }
        
    [ForeignKey("woId"), Required]
    public virtual WorkOrder WorkOrder { get; set; }
    
    [ForeignKey("BomInstructionItemId")]
    public virtual BomInstructionItem? BomInstructionItem { get; set; }
}