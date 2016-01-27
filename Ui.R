library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Examine the law of large numbers"),
        sidebarPanel(
                h3('Enter test parameters here'),
                numericInput('mu','enter mean value',5,min = 10,max=100,step=5),
                sliderInput('ss','Select a Sample size',value = 10,min= 100,max=2000,step=100,),
                submitButton('Submit')
                ),
        mainPanel(
                h3('Documentation'),
                h5('This is a simple application that helps you explore the law of large numbers with reference to random exponential distributions.'),
                h5('Law of Large numbers states that the average approaches what it is estimating.'),
                h5('The figure illustrates this by plotting how the sample mean converges to theoretical mean when  sample size increases.'),
                h5('Enter a theoretical mean value for random exponential distribution.'),
                h5('Select a sample size and hit submit.'),
                h5('The application will generate random exponentials and plot cummulative means upto a max sample size you selected'),
                h5('Repeat testing will illustrate the sample mean converges to the theoretical mean you selected as the sample size increases.'),
                h4('mean value You Selected'),
                verbatimTextOutput("mu"),
                h4('Sample Size You Selected'),
                verbatimTextOutput("ss"),
                h4('sample mean distribution'),
                #plotOutput('newHist'),
                plotOutput('plot2')
                
                                )
        ))