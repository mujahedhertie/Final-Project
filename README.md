# Final Project - MPP-E1180: Introduction to Collaborative Social Science Data Analysis

### Spring 2016

**Version: 01 May 2016**

#### By: Md Mujahedul Islam & Johannes Schulz-Knappe

### Description of the project progress

This repository is created for the **Collaborative Research Project** of the course [MPP-E1180: Introduction to Collaborative Social Science Data Analysis](https://github.com/HertieDataScience/SyllabusAndLectures), taught by [Christopher Gandrud](https://github.com/christophergandrud). This readme file describes our work done for this assignment.

The task for this assignment was to pose a social science question and attempt to answer it using standard academic practices including original data collection and statistical analysis. The project has three presentation outputs designed to present our research to multiple audiences.

1) An oral presentation given in the final class
2) A standard academic paper (~5,000 words) that is fully reproducible and dynamically generated
3) A website designed to present key aspects of our research to a general audience. 

As of 01 May 2016, this repository contains the work done in previous assignments as well as the presentation to be given in class at 02 May 2016.


### Documents in the repository

Besides this readme, there are 9 main files in the repository

- [Presentation.Rmd](https://github.com/mujahedhertie/Final-Project/blob/master/Presentation.Rmd) is the markup document that contains our presentation
- [Presentation.html](https://github.com/mujahedhertie/Final-Project/blob/master/Presentation.html) and [Presentation.pdf](https://github.com/mujahedhertie/Final-Project/blob/master/Presentation.pdf) are the output files of our presentation, in html and pdf
- [Data.Rda](https://github.com/mujahedhertie/Final-Project/blob/master/Data.Rda) is our data set. It contains 15 variables on 94 observations.
- [1_Data.R](https://github.com/mujahedhertie/Final-Project/blob/master/1_Data.R) is the R file that contains all our data gathering, cleaning, and merging work. Run this file to update the dataset.
- [2_Analysis.R](https://github.com/mujahedhertie/Final-Project/blob/master/2_Analysis.R) is the R file that separately contains all analysis we performed on the dataset
- [Library.bib](https://github.com/mujahedhertie/Final-Project/blob/master/Library.bib) is the bibTeX file that contains our literature and sources
- [Packages1.bib](https://github.com/mujahedhertie/Final-Project/blob/master/Packages1.bib) and [Packages2.bib](https://github.com/mujahedhertie/Final-Project/blob/master/Packages2.bib) are two bibTeX libraries that list the packages we used for 1) the data collection, and 2) the analysis.

Furthermore, there are four folders. The [data_gathering](https://github.com/mujahedhertie/Final-Project3/tree/master/data_gathering) folder contains the two R files that gather and scrape our datasets, while the [data_cleaning](https://github.com/mujahedhertie/Final-Project/tree/master/data_cleaning) folder contains the two R files that clean the election and the structural data. The [1_Data.R](https://github.com/mujahedhertie/Final-Project/blob/master/1_Data.R) file has to have access to those folders in order to run the data collection.
The [data_raw](https://github.com/mujahedhertie/Final-Project/tree/master/data_raw) folder contains the structural data sets that were manually downloaded from the Genesis-Online database. And finally, the [outputs](https://github.com/mujahedhertie/Final-Project/tree/master/outputs) folder contains two subfolders - [figures](https://github.com/mujahedhertie/Final-Project/tree/master/outputs/figures) and [tables](https://github.com/mujahedhertie/Final-Project/tree/master/outputs/tables) - where we stored the tables and figures we created.