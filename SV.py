import matplotlib.pyplot as plt
import numpy as np
import math
import sys
import csv

def SV():
    file=sys.argv[1]
    print(file)
    ranges=[]
    with open(file, "r") as f:
        formatted=csv.reader(f)
        ##print(formatted)
        maxIndex=-math.inf
        minIndex=math.inf
        for line in formatted:
            ##print(line[0])
            idk=line[0].split("        ")
            ##print(idk)
            coords=idk[1]
            coords=coords.split("->")
            coordA=coords[0]
            coordB=coords[1]
            Achromosome=coordA[3:5]
            Bchromosome=coordB[3:5]
            ##print(coordA)
            ##print(Achromosome)
            ##print(coordB)
            ##print(Bchromosome)
            coordA=coordA[6:len(coordA)-1]
            coordB=coordB[6:len(coordB)-1]
            coordA=int(coordA)
            coordB=int(coordB)
            if Achromosome == Bchromosome:
                ##print(coordA)
                ##print(coordB)
                if int(coordA) < int(coordB):
                    ranges.append((coordA, coordB))
                else:
                    ranges.append((coordB, coordA))
                if coordA > maxIndex:
                    maxIndex=coordA
                if coordB > maxIndex:
                    maxIndex = coordB
                if coordA < minIndex:
                    minIndex = coordA
                if coordB < minIndex:
                    minIndex = coordB
            else:
                print(line)
    ##print(ranges)
    ##print(minIndex)
    ##print(maxIndex)
    geneLength = maxIndex - minIndex
    coverage=np.zeros(geneLength)
    
    for begin, end in ranges:
        coverage[begin:end]+=1
    
    x_axis=np.arange(minIndex, minIndex + len(coverage))
    ##relative=coverage / len(ranges)
    plt.plot(x_axis, coverage, color="palevioletred")
    plt.xlabel("Genomic Position")
    plt.ylabel("Frequency of Variation")
    plt.title("Frequency of Structural Variance in CCND2 on Chromosome 2")
    plt.grid(True)
    plt.show()
           
SV()
