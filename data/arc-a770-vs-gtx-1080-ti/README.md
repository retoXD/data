# Arc A770 Vs Gtx 1080 Ti

_added: 2023-03-17_

I collected this data to better understand how the Arc A770 scales based on render
resolution, how it compares to the GTX 1080 Ti, and how performance is affected
by the CPU.

* The Ryzen 5800X3D was paired with 2x8GB 3200 C14 RAM.
* The Ryzen 5600G was paired with 2x8 4400 C20 RAM and overclocked to 4.6 Ghz.
* For the sake of time efficiency on my part, I only ran benchmarks once.
* Intel Driver 31.0.101.4146

TODO: Add video link

## Arc A770 Vs Gtx 1080 Ti (Arc-A770-vs-GTX-1080-Ti.csv)

144 observations of 6 variables.

- **graphics_card** [character]: Intel Arc A770 or GTX 1080 Ti
- **cpu** [character]: Ryzen 5800X3D or Ryzen 5600G OC (overclocked)
- **benchmark** [character]: Game Benchmark
- **resolution** [double]: Resolution (render resolution may be affected by upscaler)
- **settings** [character]: Graphics preset
- **FPS** [double]: Benchmark result in average FPS

|graphics_card |cpu            |benchmark                | resolution|settings   | FPS|
|:-------------|:--------------|:------------------------|----------:|:----------|---:|
|Arc A770      |Ryzen 5600G OC |Assassin's Creed Odyssey |       1080|Ultra High |  48|
|Arc A770      |Ryzen 5600G OC |Assassin's Creed Odyssey |       1440|Ultra High |  47|
|Arc A770      |Ryzen 5600G OC |Assassin's Creed Odyssey |       2160|Ultra High |  33|
|Arc A770      |Ryzen 5800X3D  |Assassin's Creed Odyssey |       1080|Ultra High |  56|
|Arc A770      |Ryzen 5800X3D  |Assassin's Creed Odyssey |       1440|Ultra High |  50|

