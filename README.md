# CSE182_FinalProject

This repository contains all the graphics, files, and code used in Team 7's Final Project. Below is a summary.

### chr**X**.txt

These files contain a list of all discordant edges on chromosome **X**. If the file isn't present, then there were no edges found.

### chr**X**_SV.png

For each chromosome with discordant edges, this graph displays the relative structural variance of the CCND2 protein and its location.

### Folder: Amplicons

This folder contains 10 unique amplicon graphs (.png and .txt file representations) that were used to derive the structural variant data.

### SV.py and SV.sh

These programs were used to extract the discordant edges from the amplicon graphs, and visualize the location of the variants using matplotlib. SV.sh takes in a file of all edges in one or more amplicon graphs and seperates them by which chromosome the edge originates from, into the chr**X**.txt files. For each of these files, SV.py parses each edge and if that edge traverses only one chromosome (ie: chr12.100->chr.12.150) then it is used in our graphical representation for that chromosome's structural variation. SV.py will print all discordant edges where the edge traverses multiple chromosomes for further analysis.

### seperate_discordant.txt

A list of all the discordant edges in the amplicon graphs that spanned multiple chromosomes.

### discordant.txt

A list of **all** discordant edges in the amplicon graphs.
