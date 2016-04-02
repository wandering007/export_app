A Shiny app visualizing the export status of cultural publication of China from 2008 to 2014.

##Ways to use the app:

* Download the repository to local. Launch the app in R with the following commands:

```
#install.packages("shiny")
#setwd("/path/to/local/") --set the working directory
library(shiny)
runApp("export_app")
```

* runUrl

I've saved the Shiny app's directory as a zip file(i.e. [export_app.zip](https://raw.githubusercontent.com/wandering007/export_app/master/export_app.zip)).
runUrl will download and launch a Shiny app straight from a weblink. That is:

```
library(shiny)
runUrl("https://raw.githubusercontent.com/wandering007/export_app/master/export_app.zip")
```

* runGitHub

You can launch the app by running:

```
runGitHub("https://github.com/wandering007/export_app")
```

* Host the app as web page

see the result of the app directly in [here](https://wandering007.shinyapps.io/export_app/).
