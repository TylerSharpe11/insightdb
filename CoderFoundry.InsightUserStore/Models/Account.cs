namespace CoderFoundry.InsightUserStore.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Security.Accounts")]
    public partial class Account
    {
        public Account()
        {
            Transactions = new HashSet<Transaction>();
        }

        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        public Guid Household { get; set; }

        [StringLength(50)]
        public string Name { get; set; }

        [Column(TypeName = "money")]
        public decimal? Balance { get; set; }

        [Column(TypeName = "money")]
        public decimal? ReconciledBalance { get; set; }

        public virtual ICollection<Transaction> Transactions { get; set; }
    }
}
