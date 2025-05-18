# Microarray Data Analysis Assignment
This repository contains the work for the second assignment of the BIOL5327M Analytical Skills in Precision Medicine module. The objective of this assignment is to analyse a microarray dataset and report the findings.

## Quick-start
```bash
git clone https://github.com/ChristopherLetton/Assessment_2.git
cd Assessment_2
Rscript Setup.R                     # installs any missing packages
R -e "rmarkdown::render('analysis/assessment_2.Rmd')"
```

## Dataset
I used the lymphoma microarray data for this analysis. The dataset was preprocessed and normalised to ensure data quality and reliability. The analysis included the following key steps:

T-Test: A standard t-test was performed to identify differentially expressed genes.
Limma Analysis: The Limma (Linear Models for Microarray Data) package in R was utilised for a more robust identification of significant genes.
## Key Results
The final results are presented as a ranked list of significant genes, highlighting the most relevant findings in terms of differential expression. This includes a table of the top 10 genes, visualisations, and a critical discussion of the insights gained from the analysis.
