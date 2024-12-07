// Generated from Fishbowl SQL Schema

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FishbowlSQL.Models;

public class SysUser
{
    [Key]
    [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; init; }

    [Required] public bool ActiveFlag { get; init; }

    [StringLength(255)] public string Email { get; init; }

    [StringLength(15)] public string FirstName { get; init; }

    [StringLength(5)] public string Initials { get; init; }

    [StringLength(15)] public string LastName { get; init; }

    [StringLength(255)] public string Phone { get; init; }

    [StringLength(100)] [Required] public string UserName { get; init; }

    [StringLength(255)] [Required] public string UserPwd { get; init; }

    public DateTimeOffset? PasswordLastModified { get; init; }

    [StringLength(64)] [Required] public string MfaSecret { get; init; }

    [Required] public int MfaBypassCounter { get; init; }

    // Assuming handling 'customFields' column manually because it's json type
}