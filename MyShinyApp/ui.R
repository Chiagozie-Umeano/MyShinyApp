
library(shiny)

shinyUI(
    navbarPage("My Shiny App",
               tabPanel("Analysis",
                        fluidPage(
                            titlePanel("Relationship between variables and miles per gallon"),
                            sidebarLayout(
                                sidebarPanel(
                                    selectInput("variable", "Variable:",
                                                c("Number of cylinders" = "cyl",
                                                  "Displacement (cu.in.)" = "disp",
                                                  "Gross horsepower" = "hp",
                                                  "Rear axle ratio" = "drat",
                                                  "Weight (lb/1000)" = "wt",
                                                  "1/4 mile time" = "qsec",
                                                  "V/S" = "vs",
                                                  "Transmission" = "am",
                                                  "Number of forward gears" = "gear",
                                                  "Number of carburetors" = "carb"
                                                )),
                                    
                                    checkboxInput("outliers", "Show BoxPlot's outliers", FALSE)
                                ),
                                
                                mainPanel(
                                    h3(textOutput("caption")),
                                    
                                    tabsetPanel(type = "tabs", 
                                                tabPanel("BoxPlot", plotOutput("mpgBoxPlot")),
                                                tabPanel("Regression model", 
                                                         plotOutput("mpgPlot"),
                                                         verbatimTextOutput("fit")
                                                )
                                    )
                                )
                            )
                        )
               ),
               tabPanel("Note on the Data Set",
                        
                        h3("This is on Regression Models"),
                        helpText("This work is about comparing automatic and manual transmission, to determine the one with a better miles per gallon (mpg) efficency", "To evaluate the mpg difference in automatic versus manual transmission", "This collects data on these two types of cars and compare the variables against the miles per gallon (outcome)"),
                        h3("Important"),
                        p("This is a data frame of a total of 32 observations on 11 variables."),
                        
                        a("https://class.coursera.org/regmods-008")
               ),
               tabPanel("Data Compilation",
                        h2("Motor Trend Car Road Tests"),
                        hr(),
                        h3("Description"),
                        helpText("This data is from the 1974 Motor Trend US magazine,",
                                 " it comprises the fuel consumption and 10 aspects of automobile design and performance",
                                 " for 32 automobiles from the 1973-74 models."),
                        h3("Format"),
                        p("A Data frame with 32 observations on 11 variables."),
                        
                        p("  [, 1]   mpg         Miles/(US) gallon"),
                        p("  [, 2]	 cyl	 Number of cylinders"),
                        p("  [, 3]	 disp	 Displacement (cu.in.)"),
                        p("  [, 4]	 hp	 Gross horsepower"),
                        p("  [, 5]	 drat	 Rear axle ratio"),
                        p("  [, 6]	 wt	 Weight (lb/1000)"),
                        p("  [, 7]	 qsec	 1/4 mile time"),
                        p("  [, 8]	 vs	 V/S"),
                        p("  [, 9]	 am	 Transmission (0 = automatic, 1 = manual)"),
                        p("  [,10]	 gear	 Number of forward gears"),
                        p("  [,11]	 carb	 Number of carburetors"),
                        
                        h3("Source"),
                        
                        p("Henderson and Velleman (1981), Building multiple regression models interactively. Biometrics, 37, 391-411.")
               ),
               tabPanel("My Github repository",
                        a("https://github.com/Chiagozie-Umeano/MyShinyApp.git"),
                        hr(),
                        h4("Thank you for viewing my Shiny App"),
                        h4("The name of the repository is MyShinyApp")
               )
    )
)

