# Arc A770 Vs Gtx 1080 Ti

_added: 2023-03-17_

I collected this data to better understand how the Arc A770 scales based on render
resolution, how it compares to the GTX 1080 Ti, and how performance is affected
by the CPU.

* The Ryzen 5800X3D was paired with 2x8GB 3200 C14 RAM.
* The Ryzen 5600G was paired with 2x8 4400 C20 RAM and overclocked to 4.6 Ghz.
* For the sake of time efficiency on my part, I only ran benchmarks once.
* Intel Driver 31.0.101.4146

[![Time to Buy Intel Arc or Return It?](https://img.youtube.com/vi/wps6JQ26xlM/0.jpg)](https://youtu.be/wps6JQ26xlM)

## Arc A770 Vs Gtx 1080 Ti (Arc-A770-vs-GTX-1080-Ti.csv)

144 observations of 6 variables.

- **graphics_card** [character]: Intel Arc A770 or GTX 1080 Ti
- **cpu** [character]: Ryzen 5800X3D or Ryzen 5600G OC (overclocked)
- **benchmark** [character]: Game benchmark
- **resolution** [double]: Resolution (render resolution may be affected by upscaler)
- **FPS** [double]: Benchmark result in average FPS

|graphics_card |cpu            |benchmark                | resolution| FPS|
|:-------------|:--------------|:------------------------|----------:|---:|
|Arc A770      |Ryzen 5600G OC |Assassin's Creed Odyssey |       1080|  48|
|Arc A770      |Ryzen 5600G OC |Assassin's Creed Odyssey |       1440|  47|
|Arc A770      |Ryzen 5600G OC |Assassin's Creed Odyssey |       2160|  33|
|Arc A770      |Ryzen 5800X3D  |Assassin's Creed Odyssey |       1080|  56|
|Arc A770      |Ryzen 5800X3D  |Assassin's Creed Odyssey |       1440|  50|

## Benchmark Settings (benchmark_settings.csv)

12 observations of 3 variables.

- **benchmark** [character]: Game benchmark
- **settings** [character]: Graphics preset
- **gfx_api** [character]: One of DX11, DX12, Vulkan

|benchmark                     |settings   |gfx_api |
|:-----------------------------|:----------|:-------|
|Assassin's Creed Odyssey      |Ultra High |DX11    |
|Assassin's Creed Valhalla     |Ultra High |DX12    |
|Callisto Protocol             |Ultra      |DX12    |
|Cyberpunk 2077                |High       |DX12    |
|Hitman World of Assassination |Max        |DX12    |