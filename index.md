---
title       : Exploratory Analysis of Motor Trend Dataset with Decision Tree 
subtitle    : 
author      : Yuwei Cui
job         : University of Maryland, College Park
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## The Motor Trend Dataset

- The motor trend dataset (mtcars) is a build in dataset in R.
It contains fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973–74 models).

- Let's load the dataset in R and look at the first three observations:

```r
data(mtcars)
head(mtcars,3)
```

```
##                mpg cyl disp  hp drat    wt  qsec vs am gear carb
## Mazda RX4     21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
## Mazda RX4 Wag 21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
## Datsun 710    22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
```

--- .class #id 

## Decision Tree Models




