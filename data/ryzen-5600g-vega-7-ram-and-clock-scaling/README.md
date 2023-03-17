# Ryzen 5600g Vega 7 RAM And Clock Scaling

_added: 2023-03-17_

I collected this data when I was exploring the relationship between RAM speed 
and GPU core clock on the Ryzen 5600G's integrated Vega 7 GPU.

[![432 Benchmarks on Ryzen 5600G - RAM x Vega Scaling (Stock vs Overclock)](https://img.youtube.com/vi/XCbHUTpKCVI/0.jpg)](https://youtu.be/XCbHUTpKCVI)

## Bechmark Results (bechmark_results.csv)

432 observations of 6 variables.

- **ram_mts** [double]: RAM Speed in MT/s 
- **ram_timings** [character]: Timings used on RAM
- **gpu_core_mhz** [double]: Fixed Vega 7 GPU core clock
- **benchmark** [character]: Game or Benchmark used, for details see _benchmark_settings.csv_
- **score_type** [character]: Average FPS or Total FPS
- **score** [double]: FPS

| ram_mts|ram_timings | gpu_core_mhz|benchmark                   |score_type |      score|
|-------:|:-----------|------------:|:---------------------------|:----------|----------:|
|    2133|16-16-16-36 |         1900|Tomb Raider 2013            |FPS        |   42.40000|
|    2133|16-16-16-36 |         1900|Assassin's Creed Odyssey    |Frames     | 1554.00000|
|    2133|16-16-16-36 |         1900|Shadow of the Tomb Raider   |Frames     | 3340.00000|
|    2133|16-16-16-36 |         1900|Middle Earth: Shadow of War |FPS        |   21.14165|
|    2133|16-16-16-36 |         1900|Metro Exodus                |FPS        |   34.68000|

## Benchmark Settings (benchmark_settings.csv)

6 observations of 4 variables.

- **benchmark** [character]: Game or benchmark name 
- **resolution** [character]: Base resolution
- **preset** [character]: Graphics preset
- **notes** [character]: Misc

|benchmark                   |resolution |preset |notes                |
|:---------------------------|:----------|:------|:--------------------|
|Tomb Raider 2013            |1080p      |High   |NA                   |
|Assassin's Creed Odyssey    |1080p      |Low    |Resolution Scale 80% |
|Metro Exodus                |1080p      |Lowest |NA                   |
|Middle Earth: Shadow of War |1080p      |Lowest |NA                   |
|Shadow of the Tomb Raider   |1080p      |Low    |Anti Aliasing: Off   |

## Test System Part List (test_system_part_list.csv)

8 observations of 3 variables.

- **part_type** [character]: Type of part
- **part** [character]: Model
- **notes** [character]: Misc

|part_type   |part                        |notes                                                 |
|:-----------|:---------------------------|:-----------------------------------------------------|
|CPU         |AMD Ryzen 5 5600            |PBO Enabled                                           |
|GPU         |AMD Radeon Vega 7           |Pre-allocated 2GB VRAM in BIOS (Game Optimized)       |
|CPU Cooler  |Asetek 280                  |Gen 6 Pump, Two Arctic P14 PWM CO PST fans, top mount |
|RAM         |16GB (2x8) G.skill          |XMP 4400/19-19-19-39 @1.4V                            |
|Motherboard |Gigabyte B550I AORUS PRO AX |Rev 1.0, BIOS F14                                     |
