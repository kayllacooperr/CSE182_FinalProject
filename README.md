# CSE182_FinalProject

This repository contains all the graphics, files, and code used in Team 7's Final Project. Below is a summary.

### DiscordantEdges

Discordant.txt contains the discordant edges gathered from the amplicon graphs. The chr**X**.txt files represent all discordant edges stemming from chromosome **X**. seperate_discordant.txt represents all discordant edges that span multiple chromosomes.

### Amplicons

This folder contains 10 unique amplicon graphs (.png and .txt file representations) that were used to derive the structural variant data.

### SV.py and SV.sh

These programs were used to extract the discordant edges from the amplicon graphs, and visualize the location of the variants using matplotlib. SV.sh takes in a file of all edges in one or more amplicon graphs and seperates them by which chromosome the edge originates from, into the chr**X**.txt files. For each of these files, SV.py parses each edge and if that edge traverses only one chromosome (ie: chr12.100->chr.12.150) then it is used in our graphical representation for that chromosome's structural variation. SV.py will print all discordant edges where the edge traverses multiple chromosomes for further analysis.


