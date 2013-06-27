[![Build Status](https://travis-ci.org/JoeShep/Universe.png)](https://travis-ci.org/JoeShep/Universe)




Universe
=====================
all the schools in your orbit

Purpose
-------

This is a project for the Unit 2 (Ruby on Rails) portion of the Nashville Software School Software Development Fundamentals course. It is an adaptation/continuation of CollegeTrax, my Ruby-only command line app project from earlier in the course.

The contstraints of the project are that it must use Ruby on Rails, PostgresQL, and be deployed on Heroku.

The goal of this project is to create a visit log and ranking system for high school students who are visiting colleges and universities as part of the application process.

Many students visit multiple schools, sometimes over a very short period of time, sometimes with long stretches between visits. Both scenarios can make it hard to remember what a student liked or disliked about a particular school. This app will help the user keep track of each visit and allow the user to see how the schools compare to each other in the areas of greatest importance, as weighted by the user.


--------
The main features of Universe are:

**1) Inputs for:<br>**
  School name<br>
  Visit date<br>
  Yes/no prompts for:<br>
    Was school in session when visited?<br>
    Did you take a tour?<br>
    Did you do an interview?<br>
    etc<br>
  Names/contact inputs for anyone you spoke to<br>

**4) Rating system (1 - 10 and NA) for:<br>**
Dorms<br>
Campus appearance<br>
Food choices
  (gf, dining service/off campus)<br>
Majors of interest<br>
College town<br>
Library<br>
Student friendliness<br>
Facilities (classrooms/labs/student center)<br>

**A generated report for each school that displays the above**<br>

**User can edit all fields or enter rankings/contact info**<br>
after setting up the basic visit info<br>

**Future features:**<br>
Additional Notes section<br>
Viewing rankings of all schools in a table for easier comparison<br>
Adding custom categories to rank and/or offer ability to choose which categories to rank<br>

Usage Instructions
------------------
This is a standard Rails app:

1. `git clone`
2. `rake db:create`
3. `rake db:migrate`
4. `rails server`
5. Go to localhost:3000

Bugs/known issues
-----------------
6/26 Add ranking, contact nav buttons inoperable
6/26 View rankings, notes nav buttons inoperable


As of June 26, 2013
TODO:
<ul>
  <li> Add ability to average rankings into one super-score </li>
  <li> Add 'notes' functionality for commenting on rankings and other visit details</li>
  <li> Add user-generated cetegories for ranking</li>
  <li> Add sort function to view school by visit date, ranking, or date enetered</li>
  <li> Deploy to Heroku</li>
</ul>

Done:
<ul>
  <li> Add editing capibility for all user-added data </li>
  <li> Add ability to store yes/no questions about the visit </li>
  <li> Add ranking text prompts </li>
  <li> Create rankings table </li>
  <li> Add ability to store rankings </li>
  <li> Add ability to choose a school from the visits list and see all the data about that school </li>
</ul>

Author
------
Joe Shepherd

License
-------
Copyright (c) 2013 Joe Shepherd

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
