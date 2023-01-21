# Pewlett-Hackard-Analysis

## Overview of the Analysis
My co-worker and I have been challenged to use SQL Through PageAdmin4 to give him a consise report/table on the number of retiring employees by title and employees eligible for the mentorship program.

## Results

* First I created the retirement titles query. The purpose of this was to show the number of retiring eligible employees and what titles they held.  THis simply helps us down the path of creating more queries to further identify areas of concerns and prioritization of needs new employees and what type.
![retirement_titles.png](https://github.com/fatkid2x4/Pewlett-Hackard-Analysis/blob/main/Retirement%20Titles.png)
* In the second query we were able to fine tune the potential retirees using a function new to me, called "Distinct on".  It allowed us to fine tune the previous query to make sure we have the names of potential retiring employees and what position they will be retiring into.  If we don't do this, then you could potentailly overcount retiring employees and it would skew the number or types of positions that might retire.
![unique_titles.png](https://github.com/fatkid2x4/Pewlett-Hackard-Analysis/blob/main/unique_titles.csv)
*
![retiring_titles.png](https://github.com/fatkid2x4/Pewlett-Hackard-Analysis/blob/main/Retiring%20Titles.png)
*
![mentorship_eligibility.png](https://github.com/fatkid2x4/Pewlett-Hackard-Analysis/blob/main/Mentorship%20Eligibility.png)
