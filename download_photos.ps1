$UserAgent = "VacationPlannerApp/1.0 (contact@vacationplanner.org)"

$photos = @(
    @{ name = "crete_balos.jpg"; url = "https://images.unsplash.com/photo-1596394516093-501ba68a0ba6?auto=format&fit=crop&w=1200&q=85" },
    @{ name = "crete_chania.jpg"; url = "https://images.unsplash.com/photo-1590523741831-ab7e8b8f9c7f?auto=format&fit=crop&w=1200&q=85" },
    @{ name = "crete_elafonisi.jpg"; url = "https://images.unsplash.com/photo-1507525428034-b723cf961d3e?auto=format&fit=crop&w=1200&q=85" },
    @{ name = "crete_imbros.jpg"; url = "https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?auto=format&fit=crop&w=1200&q=85" },
    @{ name = "albania_gjipe.jpg"; url = "https://images.unsplash.com/photo-1565008447742-97f6f38c985c?auto=format&fit=crop&w=1200&q=85" },
    @{ name = "albania_ksamil.jpg"; url = "https://images.unsplash.com/photo-1596394516093-501ba68a0ba6?auto=format&fit=crop&w=1200&q=85" },
    @{ name = "albania_himara.jpg"; url = "https://images.unsplash.com/photo-1507525428034-b723cf961d3e?auto=format&fit=crop&w=1200&q=85" },
    @{ name = "madeira_sao_lourenco.jpg"; url = "https://images.unsplash.com/photo-1541781774459-bb2af2f05b55?auto=format&fit=crop&w=1200&q=85" },
    @{ name = "madeira_porto_moniz.jpg"; url = "https://images.unsplash.com/photo-1507525428034-b723cf961d3e?auto=format&fit=crop&w=1200&q=85" },
    @{ name = "mallorca_soller.jpg"; url = "https://images.unsplash.com/photo-1539037116277-4db20889f2d4?auto=format&fit=crop&w=1200&q=85" },
    @{ name = "mallorca_sa_calobra.jpg"; url = "https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?auto=format&fit=crop&w=1200&q=85" },
    @{ name = "sardinia_goloritze.jpg"; url = "https://images.unsplash.com/photo-1533105079780-92b9be482077?auto=format&fit=crop&w=1200&q=85" },
    @{ name = "sardinia_orosei.jpg"; url = "https://images.unsplash.com/photo-1500382017468-9049fed747ef?auto=format&fit=crop&w=1200&q=85" }
)

$targetDir = "C:\Users\sergi\.gemini\antigravity\worktrees\vacation-planner\budget-sea-vacation-planner\images"

foreach ($item in $photos) {
    $filePath = Join-Path $targetDir $item.name
    try {
        Invoke-WebRequest -Uri $item.url -OutFile $filePath -UserAgent $UserAgent -TimeoutSec 15
        Write-Host "Successfully downloaded: $($item.name)"
    } catch {
        Write-Host "Error downloading $($item.name): $_"
    }
    Start-Sleep -Milliseconds 500
}
