### Documentation

This shiny app builds decision tree models using the moter trend data set (mtcars) in R. The dataset contains the fuel consumption (mpg) and 10 aspects of automobile design and performance for 32 automobiles (1973–74 models). You can specify the goal (outcome) you want to predict from the drop down menu and the predictors you are interested to consider. For more information about the dataset, you can visit [this site](http://stat.ethz.ch/R-manual/R-devel/library/datasets/html/mtcars.html)

Example use:
- Select "mpg" from the "Goal" menu to build a decision tree that predicts fuel consumption
- Select weight ("wt") and horse power ("hp") as the predictor.

The mpg is reflected by the color of each node in the decision tree. As you can see, cars with a high weight (wt>2.4 lb/1000) and a high horse power (hp > 178) have the lowest mpg value.