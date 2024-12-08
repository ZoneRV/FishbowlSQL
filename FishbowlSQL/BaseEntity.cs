using Microsoft.EntityFrameworkCore;

namespace FishbowlSQL;

public interface IBaseEntity
{
    public static abstract void BuildModel(ModelBuilder modelBuilder);
}