namespace CoderFoundry.InsightUserStore.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Security.BudgetItems")]
    public partial class BudgetItem
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        public Guid Household { get; set; }

        public int? CategoryId { get; set; }

        [StringLength(50)]
        public string Amount { get; set; }

        public virtual Category Category { get; set; }
    }
}
