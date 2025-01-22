using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace FishbowlSQL.Models;

public class QuantityInventory : IBaseEntity
{
    [Key]
    public int PartId { get; set; }

    public int LocationGroupId { get; set; }

    public decimal QtyOnHand { get; set; }

    public decimal QtyAllocatedPO { get; set; }

    public decimal QtyAllocatedSO { get; set; }

    public decimal QtyAllocatedMO { get; set; }

    public decimal QtyAllocatedTO { get; set; }

    public decimal QtyNotAvailable { get; set; }

    public decimal QtyNotAvailableToPick { get; set; }

    public decimal QtyDropship { get; set; }

    public decimal QtyOnOrderPO { get; set; }

    public decimal QtyOnOrderSO { get; set; }

    public decimal QtyOnOrderTO { get; set; }

    public decimal QtyOnOrderMO { get; set; }

    [ForeignKey("PartId")]
    public virtual Part Part { get; set; }

    [ForeignKey("LocationGroupId")]
    public virtual LocationGroup LocationGroup { get; set; }
    
    public static void BuildModel(ModelBuilder modelBuilder)
    {
        modelBuilder
           .Entity<QuantityInventory>()
           .ToView("qtyInventory");
    }
}