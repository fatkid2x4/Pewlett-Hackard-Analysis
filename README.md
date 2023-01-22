# Pewlett-Hackard-Analysis

## Overview of the Analysis

My co-worker and I have been challenged to use SQL Through PageAdmin4 to give him a concise report/table on the number of retiring employees by title and employees eligible for the mentorship program.

## Results

* First I created the retirement titles query. The purpose of this was to show the number of retiring eligible employees and what titles they held.  This simply helps us down the path of creating more queries to further identify areas of concerns and prioritization of needs new employees and what type. I have attached a .png file to show you a snippit of the query.

!<img align="left" width="100" height="100" src= [retirement_titles.png](https://github.com/fatkid2x4/Pewlett-Hackard-Analysis/blob/main/Retirement%20Titles.png) 
 
* In the second query we were able to fine tune the potential retirees using a function new to me, called "Distinct on".  It allowed us to fine tune the previous query to make sure we have the names of potential retiring employees and what position they will be retiring into.  If we don't do this, then you could potentially overcount retiring employees and it would skew the number or types of positions that might retire.  See attached snippit of retirement titles .csv.

<img align="left" width="100" height="100" src=![unique_titles.png](https://github.com/fatkid2x4/Pewlett-Hackard-Analysis/blob/main/Unique%20Titles.png) 
* To me this is really what we need to get to from the previous queries.  I will be able to report to my boss the number of upcoming retiring employees by position.  This will drive the hiring engine.  Will show what to prioritize in the near future for direct the hiring process.  
![retiring_titles.png](https://github.com/fatkid2x4/Pewlett-Hackard-Analysis/blob/main/Retiring%20Titles.png)

* Lastly we created a list of employees that could be offered and chance to bring along the new employees even with the loss of retiring employees.  So we have a staff that can train all the new employees.  This makes sense to look at because you can't just flip a switch and hire 70,000 employees overnight.  See attached .csv to see a portion of the list.
![mentorship_eligibility.png](https://github.com/fatkid2x4/Pewlett-Hackard-Analysis/blob/main/Mentorship%20Eligibility.png) 

## Summary

In summary we did a lot of work and there is room for more information.  For example, see attached .csv that show total titles. We know how many potential titles may retire but unless we know how many of each we need then its would be hard to prioritize them.  I am sure the manager knows these things by there department but would help the higher management push the hiring and mentoring process.

![all.titles](https://github.com/fatkid2x4/Pewlett-Hackard-Analysis/blob/main/all%20titles.png)

Also think it would be very important to look at the next 3 years of potentially retiring employees.  I queried the years 1956-1959 to see how many employees could also be nearing retirement.  I can see already without parsing the data that a potential of another 40k plus employees.

![next_three](https://github.com/fatkid2x4/Pewlett-Hackard-Analysis/blob/main/Next%20Three.png)

Great amount of work done for the boss and now they are is a lot to do for the future.  I am sure the boss will be asking more of us as they fine tune things.
