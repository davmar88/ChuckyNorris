using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace ChuckyNorris.Models;

public partial class ChuckjokesMdfContext : DbContext
{
    public ChuckjokesMdfContext()
    {
    }

    public ChuckjokesMdfContext(DbContextOptions<ChuckjokesMdfContext> options)
        : base(options)
    {
    }

    public virtual DbSet<JokeTb> JokeTbs { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)

        => optionsBuilder.UseSqlServer("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\StarcAlpha\\source\\repos\\MarietjieDavel\\ChuckyNorris\\Database\\chuckjokes.mdf;Integrated Security=True;Connect Timeout=30");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.UseCollation("Latin1_General_CI_AS");

        modelBuilder.Entity<JokeTb>(entity =>
        {
            entity.HasKey(e => e.Jokeid);

            entity.ToTable("joke_tb");

            entity.Property(e => e.Jokeid).HasColumnName("jokeid");
            entity.Property(e => e.Categories).HasColumnName("categories");
            entity.Property(e => e.CreatedAt).HasColumnName("created_at");
            entity.Property(e => e.DateDownloaded).HasColumnName("date_downloaded");
            entity.Property(e => e.IconUrl).HasColumnName("icon_url");
            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.IsFavorite).HasColumnName("is_favorite");
            entity.Property(e => e.UpdatedAt).HasColumnName("updated_at");
            entity.Property(e => e.Url).HasColumnName("url");
            entity.Property(e => e.Value).HasColumnName("value");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
