using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Net.Mime;
using System.Text;
using Microsoft.EntityFrameworkCore;
using MySql.EntityFrameworkCore.DataAnnotations;

namespace FishbowlSQL.Models;

/// <summary>
///     Currently limited to only working for parts
/// 
///     See <a href="https://github.com/ZoneRV/FishbowlSQL/blob/master/FishbowlSQL/SQL%20files/image.sql">Link</a> for
///     SQL script.
///     <br/>
///     See <a href="https://fishbowlhelp.com/files/database/tables/image.html">Link</a> for
///     official Fishbowl documentation.
/// </summary>
public class Image : IBaseEntity
{
    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; init; }
    
    [MySQLCollation("utf8mb4_unicode_ci")]
    public string? ImageFull { get; init; }
    
    [MySQLCollation("utf8mb4_unicode_ci")]
    public string? ImageThumbnail { get; init; }
    
    [Required]
    public int RecordId { get; init; }
    
    [StringLength(150), Required]
    public string TableName { get; init; }
    
    [StringLength(50), Required]
    public string Type { get; init; }
    
    public static void BuildModel(ModelBuilder modelBuilder)
    {
        //TODO: make compatible with other tables
        modelBuilder.Entity<Image>()
            .HasQueryFilter(i => i.TableName == "part");
    }

    /// <summary>
    /// Saves the image file to the specified directory path.
    /// </summary>
    /// <param name="directoryPath">The directory to save the image.</param>
    /// <param name="forceReDownload">If set to true, existing files will be deleted and re-decoded.</param>
    /// <returns>Full file path where the image is saved.</returns>
    public async Task<string> SaveFileAsync(string directoryPath, bool forceReDownload = false)
    {
        string[] types = Type.Split('/');
        string newFilePath = $"{directoryPath}/fishbowl_{types[0]}_{Id}.{types[1]}";
        
        if (!Directory.Exists(directoryPath))
            Directory.CreateDirectory(directoryPath);

        if (File.Exists(newFilePath) && !forceReDownload)
            return newFilePath;
        
        string? imageString = null;

        if (ImageFull is not null)
            imageString = ImageFull;

        else if (ImageThumbnail is not null)
            imageString = ImageThumbnail;
        
        ArgumentException.ThrowIfNullOrEmpty(imageString, "Image Content");

        byte[] bytes = Convert.FromBase64String(imageString);

        await using var fileStream = new FileStream(newFilePath, FileMode.Create);
        await fileStream.WriteAsync(bytes);

        return newFilePath;
    }
}