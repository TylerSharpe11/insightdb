namespace CoderFoundry.InsightUserStore.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Security.Invitations")]
    public partial class Invitation
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        public int? FromUserId { get; set; }

        [StringLength(50)]
        public string ToEmail { get; set; }
    }
}
