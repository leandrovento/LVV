#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinydashboard)
library(shinydashboardPlus)
library(shinyWidgets)

# Define UI for application that draws a histogram
shinyUI(
    
    dashboardPagePlus(
        header = dashboardHeaderPlus(
            enable_rightsidebar = TRUE,
            rightSidebarIcon = "gears",
            left_menu = tagList(
                dropdownBlock(
                    id = "mydropdown",
                    title = "Dropdown 1",
                    icon = icon("sliders"),
                    sliderInput(
                        inputId = "n",
                        label = "Number of observations",
                        min = 10, max = 100, value = 30
                    ),
                    prettyToggle(
                        inputId = "na",
                        label_on = "NAs keeped",
                        label_off = "NAs removed",
                        icon_on = icon("check"),
                        icon_off = icon("remove")
                    )
                ),
                dropdownBlock(
                    id = "mydropdown2",
                    title = "Dropdown 2",
                    icon = icon("sliders"),
                    prettySwitch(
                        inputId = "switch4",
                        label = "Fill switch with status:",
                        fill = TRUE,
                        status = "primary"
                    ),
                    prettyCheckboxGroup(
                        inputId = "checkgroup2",
                        label = "Click me!",
                        thick = TRUE,
                        choices = c("Click me !", "Me !", "Or me !"),
                        animation = "pulse",
                        status = "info"
                    )
                )
            )
        ),
        sidebar = dashboardSidebar(),
        body = dashboardBody(
            
            box(width = 4, height = "300px",
            loadingState()
            )
        ),
        rightsidebar = rightSidebar(
            background = "dark",
            rightSidebarTabContent(
                id = 1,
                title = "Tab 1",
                icon = "desktop",
                active = TRUE,
                sliderInput(
                    "obs",
                    "Number of observations:",
                    min = 0, max = 1000, value = 500
                )
            ),
            rightSidebarTabContent(
                id = 2,
                title = "Tab 2",
                textInput("caption", "Caption", "Data Summary")
            ),
            rightSidebarTabContent(
                id = 3,
                icon = "paint-brush",
                title = "Tab 3",
                numericInput("obs", "Observations:", 10, min = 1, max = 100)
            )
        ),
        title = "Right Sidebar"
    )

)
