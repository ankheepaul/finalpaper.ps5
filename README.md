Overview

This repository contains code and the report for the statistical study undertaken in an attempt to reproduce Tom Cardoso's "Bias behind Bars" - article published in The Globe and Mail, to discover racial discrimination against black and indigenous people in the Canadian  judical system. It was created by Ankhee Paul. The purpose of this is to create a report that summarises the results of a statistial model that was built. It was discovered that black inmates have a higher probability of receiving the worst offender security level scores compared to white prisoners whereas black and indigenous male prisoners have a higher probability of receiving the worst reintegration potential score compared to other male prisoners of other racial backgrounds.. The data that was used for anaylsis cannot be shared publicly. Details on how to obtain this data is prvided below. The sections of this repository are: inputs, outputs, scripts.

Inputs contain data that are unchanged from their original and was used by Tom Cardoso while coducting his analysis and article. We use one data set: The data set used in our report fall under copyright laws and thus we cannot include the direct data files.

Globe and Mail data: To obtain the observational data for this study, please click on the following link: [Link to observational data](https://www.theglobeandmail.com/files/editorial/News/nw-na-risk-1023/The_Globe_and_Mail_CSC_OMS_2012-2018_20201022235635.zip)
 
The original article that has been reproduced can be found here: [Bias behind Bars](https://www.theglobeandmail.com/canada/article-investigation-racial-bias-in canadian-prison-risk-assessments/)

Outputs contain data that has been modified from the input data, the report and supporting material.

paper.rmd

paper.pdf

Scripts contain R scripts that take inputs and outputs and produce outputs. These are:

data_cleaning.R code to clean the CSC data set

appendix.rmd code for the entire paper