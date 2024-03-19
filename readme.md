
## Description
The idea behind this app is to identify and visualize which countries are the main producers of rare earth materials (specifically Cobalt, Lithium, and Graphite, alongside a remainder "rare earth" category). It is very much a barebones mock-up.

Each circle represents the total resource production of the material in the respective country in the fiscal year 2022. This data is not exhaustive, but it lists the overwhelming majority of global material production (92%-97%). Each circle is proportional to the material quantity; all quantities listed are in Kilotons.

## Concept
My initial idea was to create a map of all rare-earth material mines, their efficiency, and the total production of the country. This could be displayed alongside a map of the country-consumption rates of these materials, showcasing a production-consumption disparity.

I downsized from that goal, mostly because clean data on specialized, market-oriented topics like these is difficult to find. Two sites, [Statistica](https://www.statista.com/statistics/1143399/global-cobalt-consumption-distribution-by-application/) and [The Global Mining Project](https://www.globaldata.com/store/report/cobalt-mining-market-analysis/?view_report=yes&token=9tqdl0ua2f&utm_campaign=GD%20-%20RS%20-%20Request%20Sample%20Pages&utm_medium=email&_hsmi=72896524&_hsenc=p2ANqtz-9BHNT78rDXUiAJyHIRmXiWBNRzFdwgsUK-3aLS_lg_JBMDvJu76LRJNwDgMr5l0g1InrdQy2A-u8MLGm6zwQutcFh6skJrrGntaplUIsDLmyO-5bk&utm_content=72896524&utm_source=hs_automation) have everything I would've needed - but their data was paywalled.

## Data & Structure:
Data is sourced from the [Energy Institute](https://www.energyinst.org/statistical-review/resources-and-data-downloads)'s 2024 World Energy Report. The original data is available as a CSV file called "Consolidated Dataset - Narrow Format." The raw data file, R code, and additional materials are on my [github](https://github.com/BGray-wrl/map-template). 

The shell structure of the app was forked from [atmajitg/bloodbanks](https://github.com/atmajitg/bloodbanks), found through the [Shiny Postit Gallery](https://shiny.posit.co/r/gallery/). All of the project-specific code was written by me.
