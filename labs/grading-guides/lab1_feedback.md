
# Lab 1 Feedback Guide

__If they have answers to all eight (8) questions, they earn a "Complete".__

## Question 1, 2, 3 

List of favorite animals, include a picture, change section header

## Question 4

__If they say something about `#| include: false`:__

**Question 4** -- Yes! You are on the right track! The #| include: false option tells Quarto that neither the code nor the output (messages) should be included in the rendered document. 

__If they say something about the code not running / the code not producing output:__

**Question 4** -- Technically, this code **does** run AND produces messages from loading in the package. The reason you can't see the code or these messages is because of the #| include: false option. This option tells Quarto that neither the code nor the output (messages) should be included in the rendered document. 

__If they say something not relevant to loading in a package:__

**Question 4** -- The code for Question 1 is associated with loading in the tidyverse package. Technically, this code **does** run AND produces messages from loading in the package. The reason you can't see the code or these messages is because of the #| include: false option. This option tells Quarto that neither the code nor the output (messages) should be included in the rendered document. 

## Question 5

__If they say it gives a preview of the dataset:__

**Question 5** -- You are on the right track! The glimpse() function outputs a preview of the dataset, specifically the column names, their data types, and a preview of the rows of each column. 

## Question 6

__If they say something about the code not showing:__

**Question 6** -- Yes! The #| echo: false option tells Quarto that the code **should not** be included in the rendered document, but the output of the code (the plot) **should** be included! 

__If they say something not relevant to the code not showing:__

**Question 6** -- The #| echo: false option doesn't control what is being plotted, it controls how the rendered HTML file looks. Specifically, the #| echo: false option tells Quarto that the code should not be output in the rendered file, but the output of the code (the plot) should be included. 
