A Shiny app visualizing the export status of cultural publication of China from 2008 to 2014.
======================================================

Ways to use the app:
--------------------

1.Download the repository to local. Launch the app in R with the following commands:

```#install.packages("shiny")
#setwd("/path/to/local/") --set the working directory
library(shiny)
runApp("export_app")
```

2. runUrl
I've saved the Shiny app's directory as a zip file(i.e. [export_app.zip](https://github.com/wandering007/export_app/blob/master/export_app.zip)).
runUrl will download and launch a Shiny app straight from a weblink. That is:
library(shiny)
runUrl("https://github.com/wandering007/export_app/blob/master/export_app.zip")

3. runGitHub
You can launch the app by running:
`runGitHub("https://github.com/wandering007/export_app", "<your name>")`

4. runGist
I copy the app files to the Gist web page ....
You can launch teh app with:
`runGist("number")`

5. Host the app as web page
see the plot of the app directly in [here](wandering007.shinyapps.io).