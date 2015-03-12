namespace CoderFoundry.InsightUserStore.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Security.Users")]
    public partial class User
    {
        public User()
        {
            UserClaims = new HashSet<UserClaim>();
            UserLogins = new HashSet<UserLogin>();
            Roles = new HashSet<Role>();
        }

        public int Id { get; set; }

        [Required]
        [StringLength(50)]
        public string Household { get; set; }

        [Required]
        [StringLength(128)]
        public string UserName { get; set; }

        [StringLength(128)]
        public string Name { get; set; }

        [StringLength(128)]
        public string Email { get; set; }

        public string PasswordHash { get; set; }

        public string SecurityStamp { get; set; }

        public bool IsDeleted { get; set; }

        public bool IsLockedOut { get; set; }

        [StringLength(128)]
        public string PasswordResetToken { get; set; }

        public DateTimeOffset? PasswordResetExpiry { get; set; }

        public DateTimeOffset? LockoutEndDate { get; set; }

        public int AccessFailedCount { get; set; }

        public bool EmailConfirmed { get; set; }

        public bool LockoutEnabled { get; set; }

        public virtual ICollection<UserClaim> UserClaims { get; set; }

        public virtual ICollection<UserLogin> UserLogins { get; set; }

        public virtual ICollection<Role> Roles { get; set; }
    }
}
