# Create Shiny object
source(file = "ui.R")
source(file = "server.R")

shinyApp(ui = ui, server = server)