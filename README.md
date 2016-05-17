# Collaborative Research Project - MPP-E1180: Introduction to Collaborative Social Science Data Analysis

### Spring 2016

**Version: 17 May 2016**

#### By: Md Mujahedul Islam & Johannes Schulz-Knappe

### Description of the project progress

This repository is created for the **Collaborative Research Project** of the course [MPP-E1180: Introduction to Collaborative Social Science Data Analysis](https://github.com/HertieDataScience/SyllabusAndLectures), taught by [Christopher Gandrud](https://github.com/christophergandrud). This readme file describes our work done for this assignment.

The task for this assignment was to pose a social science question and attempt to answer it using standard academic practices including original data collection and statistical analysis. The project has three presentation outputs designed to present our research to multiple audiences.

1) An oral presentation given in the final class

2) A standard academic paper that is fully reproducible and dynamically generated

3) A website designed to present key aspects of our research to a general audience 

As of May 17, 2016, this repository contains a) the presentation which was hold in class at May 02, 2016, b) the Final Paper (both in the master branch), as well as the website (in the gh-pages branch)


### Documents in the repository

Besides this readme, there are 9 main files in the repository

- [Data.R](https://github.com/mujahedhertie/Final-Project/blob/master/Data.R) is the R file that contains all our data gathering, cleaning, and merging work. Run this file to update the dataset.
- [Data.Rda](https://github.com/mujahedhertie/Final-Project/blob/master/Data.Rda) is our data set. It contains 19 columns and 94 observations.
- [Final_Paper.Rmd](https://github.com/mujahedhertie/Final-Project/blob/master/Final_Paper.Rmd) is the markup document that contains our final paper and all analysis we performed on the dataset
- [Final_Paper.pdf](https://github.com/mujahedhertie/Final-Project/blob/master/Final_Paper.pdf) is the output file of our final paper
- [Library.bib](https://github.com/mujahedhertie/Final-Project/blob/master/Library.bib) is the bibTeX file that contains our literature and sources
- [Packages1.bib](https://github.com/mujahedhertie/Final-Project/blob/master/Packages1.bib) and [Packages2.bib](https://github.com/mujahedhertie/Final-Project/blob/master/Packages2.bib) are two bibTeX libraries that list the packages we used for 1) the data collection, and 2) the analysis
- [Presentation.Rmd](https://github.com/mujahedhertie/Final-Project/blob/master/Presentation.Rmd) is the markup document that contains our presentation
- [Presentation.pdf](https://github.com/mujahedhertie/Final-Project/blob/master/Presentation.pdf) is the pdf output file of our presentation


Furthermore, there are four folders. The [data_gathering](https://github.com/mujahedhertie/Final-Project3/tree/master/data_gathering) folder contains the two R files that gather and scrape our datasets, while the [data_cleaning](https://github.com/mujahedhertie/Final-Project/tree/master/data_cleaning) folder contains the two R files that clean the election and the structural data. The [Data.R](https://github.com/mujahedhertie/Final-Project/blob/master/Data.R) file has to have access to those folders in order to run the data collection.
The [data_raw](https://github.com/mujahedhertie/Final-Project/tree/master/data_raw) folder contains the structural data sets that were manually downloaded from the Genesis-Online database.