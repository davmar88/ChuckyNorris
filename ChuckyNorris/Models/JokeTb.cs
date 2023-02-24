using System;
using System.Collections.Generic;

namespace ChuckyNorris.Models;

public partial class JokeTb
{
    public int Jokeid { get; set; }

    public string? Categories { get; set; }

    public string? CreatedAt { get; set; }

    public string? IconUrl { get; set; }

    public string Id { get; set; } = null!;

    public string? UpdatedAt { get; set; }

    public string? Url { get; set; }

    public string Value { get; set; } = null!;

    public byte IsFavorite { get; set; }

    public string? DateDownloaded { get; set; }
}
