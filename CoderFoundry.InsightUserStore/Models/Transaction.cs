namespace CoderFoundry.InsightUserStore.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Security.Transactions")]
    public partial class Transaction
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        public int? AccountId { get; set; }

        [StringLength(50)]
        public string Amount { get; set; }

        [StringLength(50)]
        public string AbsAmount { get; set; }

        [StringLength(50)]
        public string ReconciledAmount { get; set; }

        [StringLength(50)]
        public string AbsReconiledAmount { get; set; }

        [Column(TypeName = "smalldatetime")]
        public DateTime? Date { get; set; }

        [StringLength(50)]
        public string Description { get; set; }

        [Column(TypeName = "smalldatetime")]
        public DateTime? Updated { get; set; }

        public int? UpdatedByUserId { get; set; }

        public int? CategoryId { get; set; }

        public virtual Account Account { get; set; }

        public virtual Category Category { get; set; }
    }
}
