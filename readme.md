
## Description
The idea behind this app is to identify and visualize which countries are the main producers of rare earth materials (specifically Cobalt, Lithium, and Graphite, alongside a remainder "rare earth" category). 

Each circle represents the total resource production of the material in the respective country in the fiscal year 2022. This data is not exhaustive, but it lists the overwhelming majority of global material production (92%-97%). Each circle is proportional to the material quantity; all quantities listed are in Kilotons.

## Concept
My initial idea was to create a map of all rare-earth material mines, their efficiency, and the total production of the country. This could be displayed alongside a map of the country-consumption rates of these materials, showcasing a production-consumption disparity.

I had to downsize from that ambitious goal, partly because the web app was more complicated than I anticipated, and partly because clean data on specialized, market-oriented topics like these is difficult to find. Two sites, [Statistica](https://www.statista.com/statistics/1143399/global-cobalt-consumption-distribution-by-application/) and [The Global Mining Project](https://www.globaldata.com/store/report/cobalt-mining-market-analysis/?view_report=yes&token=9tqdl0ua2f&utm_campaign=GD%20-%20RS%20-%20Request%20Sample%20Pages&utm_medium=email&_hsmi=72896524&_hsenc=p2ANqtz-9BHNT78rDXUiAJyHIRmXiWBNRzFdwgsUK-3aLS_lg_JBMDvJu76LRJNwDgMr5l0g1InrdQy2A-u8MLGm6zwQutcFh6skJrrGntaplUIsDLmyO-5bk&utm_content=72896524&utm_source=hs_automation) look like they have everything I would've needed - but each put their contents behind a steep paywall. 

That all being said, the core concept remains true. We see in this visualization that rare minerals are overwhelmingly mined in the global south. As a result, western nations are largely inoculated from the contaminants and human rights abuses, despite being the chief beneficiaries of the resource extraction.

Instead of writing a large argumentative piece for this project, I decided to work on the logic with a simple and powerful visualization. Any good argument needs both logic and rhetoric; this project aims to ensure that the logic -one critical part of an argument- is made plain, accessible, and undeniable.

## Data & Structure:
Data is sourced from the [Energy Institute](https://www.energyinst.org/statistical-review/resources-and-data-downloads)'s 2024 World Energy Report. The original data is available as a CSV file called "Consolidated Dataset - Narrow Format." The raw data file, processed data files, and my shiny code are also on my [github](https://github.com/BGray-wrl/map-template). 

The shell structure of the app was forked from [atmajitg/bloodbanks](https://github.com/atmajitg/bloodbanks), found through the [Shiny Postit Gallery](https://shiny.posit.co/r/gallery/). All of the project-specific code was written by me.