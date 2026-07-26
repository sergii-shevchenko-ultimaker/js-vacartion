$UserAgent = "VacationPlannerApp/1.0 (contact@vacationplanner.org)"

$photos = @(
    @{ name = "car_drive.jpg"; url = "https://images.unsplash.com/photo-1549399542-7e3f8b79c341?auto=format&fit=crop&w=800&q=80" },
    @{ name = "harbor_stroll.jpg"; url = "https://images.unsplash.com/photo-1590523741831-ab7e8b8f9c7f?auto=format&fit=crop&w=800&q=80" },
    @{ name = "greek_taverna.jpg"; url = "https://images.unsplash.com/photo-1544025162-d76694265947?auto=format&fit=crop&w=800&q=80" },
    @{ name = "falassarna_beach.jpg"; url = "https://images.unsplash.com/photo-1507525428034-b723cf961d3e?auto=format&fit=crop&w=800&q=80" },
    @{ name = "ancient_ruins.jpg"; url = "https://images.unsplash.com/photo-1548625361-18da87e74288?auto=format&fit=crop&w=800&q=80" },
    @{ name = "sunset_cocktail.jpg"; url = "https://images.unsplash.com/photo-1510414842594-a61c69b5ae57?auto=format&fit=crop&w=800&q=80" },
    @{ name = "canyon_hike.jpg"; url = "https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?auto=format&fit=crop&w=800&q=80" },
    @{ name = "sea_swim.jpg"; url = "https://images.unsplash.com/photo-1544551763-46a013bb70d5?auto=format&fit=crop&w=800&q=80" },
    @{ name = "local_food.jpg"; url = "https://images.unsplash.com/photo-1555396273-367ea4eb4db5?auto=format&fit=crop&w=800&q=80" },
    @{ name = "boat_cruise.jpg"; url = "https://images.unsplash.com/photo-1500382017468-9049fed747ef?auto=format&fit=crop&w=800&q=80" },
    @{ name = "castle_fortress.jpg"; url = "https://images.unsplash.com/photo-1519922639192-e73293ca430e?auto=format&fit=crop&w=800&q=80" },
    @{ name = "balos_lagoon.jpg"; url = "https://images.unsplash.com/photo-1570077188670-e3a8d69ac5ff?auto=format&fit=crop&w=800&q=80" },
    @{ name = "monastery_trail.jpg"; url = "https://images.unsplash.com/photo-1544644181-1484b3fdfc62?auto=format&fit=crop&w=800&q=80" },
    @{ name = "fjord_cove.jpg"; url = "https://images.unsplash.com/photo-1507525428034-b723cf961d3e?auto=format&fit=crop&w=800&q=80" },
    @{ name = "elafonisi_pink.jpg"; url = "https://images.unsplash.com/photo-1507525428034-b723cf961d3e?auto=format&fit=crop&w=800&q=80" },
    @{ name = "cedar_dunes.jpg"; url = "https://images.unsplash.com/photo-1473116763249-2faaef81ccda?auto=format&fit=crop&w=800&q=80" },
    @{ name = "spice_market.jpg"; url = "https://images.unsplash.com/photo-1555396273-367ea4eb4db5?auto=format&fit=crop&w=800&q=80" },
    @{ name = "panoramic_view.jpg"; url = "https://images.unsplash.com/photo-1495616811223-4d98c6e9c869?auto=format&fit=crop&w=800&q=80" },
    @{ name = "forest_trail.jpg"; url = "https://images.unsplash.com/photo-1448375240586-882707db888b?auto=format&fit=crop&w=800&q=80" },
    @{ name = "seafood_lunch.jpg"; url = "https://images.unsplash.com/photo-1534422298391-e4f8c172dddb?auto=format&fit=crop&w=800&q=80" },
    @{ name = "botanical_garden.jpg"; url = "https://images.unsplash.com/photo-1585320806297-9794b3e4eeae?auto=format&fit=crop&w=800&q=80" },
    @{ name = "freshwater_lake.jpg"; url = "https://images.unsplash.com/photo-1476514525535-ce74f45814e4?auto=format&fit=crop&w=800&q=80" },
    @{ name = "honey_souvenirs.jpg"; url = "https://images.unsplash.com/photo-1587049352846-4a222e784d38?auto=format&fit=crop&w=800&q=80" },
    @{ name = "flight_home.jpg"; url = "https://images.unsplash.com/photo-1436491865332-7a61a109cc05?auto=format&fit=crop&w=800&q=80" },
    @{ name = "himara_old_town.jpg"; url = "https://images.unsplash.com/photo-1516483638261-f4dbaf036963?auto=format&fit=crop&w=800&q=80" },
    @{ name = "byrek_wine.jpg"; url = "https://images.unsplash.com/photo-1510812431401-41d2bd2722f3?auto=format&fit=crop&w=800&q=80" },
    @{ name = "gjipe_canyon.jpg"; url = "https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=800&q=80" },
    @{ name = "ksamil_islands.jpg"; url = "https://images.unsplash.com/photo-1596394516093-501ba68a0ba6?auto=format&fit=crop&w=800&q=80" },
    @{ name = "blue_eye_spring.jpg"; url = "https://images.unsplash.com/photo-1501785888041-af3ef285b470?auto=format&fit=crop&w=800&q=80" },
    @{ name = "madeira_cliffs.jpg"; url = "https://images.unsplash.com/photo-1541781774459-bb2af2f05b55?auto=format&fit=crop&w=800&q=80" },
    @{ name = "lava_pools.jpg"; url = "https://images.unsplash.com/photo-1518509562904-e7ef99cdcc86?auto=format&fit=crop&w=800&q=80" },
    @{ name = "soller_tram.jpg"; url = "https://images.unsplash.com/photo-1539037116277-4db20889f2d4?auto=format&fit=crop&w=800&q=80" },
    @{ name = "sa_calobra_road.jpg"; url = "https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?auto=format&fit=crop&w=800&q=80" },
    @{ name = "sardinia_pinnacle.jpg"; url = "https://images.unsplash.com/photo-1533105079780-92b9be482077?auto=format&fit=crop&w=800&q=80" }
)

$targetDir = "C:\Users\sergi\.gemini\antigravity\worktrees\vacation-planner\budget-sea-vacation-planner\images"

foreach ($item in $photos) {
    $filePath = Join-Path $targetDir $item.name
    try {
        Invoke-WebRequest -Uri $item.url -OutFile $filePath -UserAgent $UserAgent -TimeoutSec 15
        Write-Host "Downloaded activity photo: $($item.name)"
    } catch {
        Write-Host "Error downloading $($item.name): $_"
    }
    Start-Sleep -Milliseconds 150
}
