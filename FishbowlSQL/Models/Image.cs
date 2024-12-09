using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;

/// <summary>
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/image.sql">Link</a> for
///     SQL script.
///     <br/>
///     See <a href="https://fishbowlhelp.com/files/database/tables/image.html">Link</a> for
///     official Fishbowl documentation.
/// </summary>
public class Image
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; init; }
    
    public string ImageFull { get; init; }
    
    public string ImageThumbnail { get; init; }
    
    [Required]
    public int RecordId { get; init; }
    
    [StringLength(150), Required]
    public string TableName { get; init; }
    
    [StringLength(50), Required]
    public string type { get; init; }

    public async Task SaveImageAsync(string path)
    {
        using (var fileStream = new FileStream(path, FileMode.Create))
        {
            
        }
    }
}