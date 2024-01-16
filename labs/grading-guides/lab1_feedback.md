# Lab 1 Feedback Guide

**If they have answers to all eight (8) questions, they earn a "Complete".**

## Question 1, 2, 3

List of favorite animals, include a picture, change section header

**If their image doesn't appear in the document**

**Question 2** -- Careful! Your image is not appearing in your rendered HTML file. There are a few different ways to fix this. First is to change the YAML (title section) of your document, as outlined in the Canvas announcement. If you did this and your image is still not showing up, then the issue might be how you are including your image. Generally, uploading an image to your project works better than including a URL link to an image. There are instructions on how to do this in the #lab channel of #Week 1 on Discord. 

## Question 4

**If they say something about `#| include: false`:**

**Question 4** -- Yes! You are on the right track! The #\| include: false option tells Quarto that neither the code nor the output (messages) should be included in the rendered document.

**If they say something about the code not running / the code not producing output:**

**Question 4** -- Technically, this code **does** run AND produces messages from loading in the package. The reason you can't see the code or these messages is because of the #\| include: false option. This option tells Quarto that neither the code nor the output (messages) should be included in the rendered document.

**If they say something not relevant to loading in a package:**

**Question 4** -- The code for Question 4 is associated with loading in the tidyverse package. Technically, this code **does** run AND produces messages from loading in the package. The reason you can't see the code or these messages is because of the #\| include: false option. This option tells Quarto that neither the code nor the output (messages) should be included in the rendered document.

## Question 5

**If they say it gives a preview of the dataset:**

**Question 5** -- You are on the right track! The glimpse() function outputs a preview of the dataset, specifically the column names, their data types, and a preview of the rows of each column.

## Question 6

**If they say something about the code not showing:**

**Question 6** -- Yes! The #\| echo: false option tells Quarto that the code **should not** be included in the rendered document, but the output of the code (the plot) **should** be included!

**If they say something not relevant to the code not showing:**

**Question 6** -- The #\| echo: false option controls how the rendered HTML file looks. Specifically, the #\| echo: false option tells Quarto that the code should not be output in the rendered file, but the output of the code (the plot) should be included.
