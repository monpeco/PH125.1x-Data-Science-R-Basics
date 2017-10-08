#### Section 1: R Basics, Functions, and Data Types   Section 1 Overview   Section 1 Overview

# Section 1 

Section 1 introduces you to R Basics, Functions and Datatypes.

In Section 1, you will learn to:

* Appreciate the rationale for data analysis using R
* Define objects and perform basic arithmetic and logical operations
* Use pre-defined functions to perform operations on objects
* Distinguish between various data types

There are two assignments that use the DataCamp platform for you to practice your coding skills.

We encourage you to use R to interactively test out your answers and further your learning.

---

#### Section 1: R Basics, Functions, and Data Types   1.1 Motivation   Motivation

# Motivation

https://youtu.be/YX4v6QJ3FAk

> In this series, we'll be using the R software environment
> for all our analyses. Throughout our data science series, you will
> learn R and data analysis techniques simultaneously. Your R skills
> will improve throughout the series. So in this course, rather than
> cover every R skill you need, we provide the building blocks so you
> can grow your knowledge as you go through the series. We find that we
> better retain our knowledge when we learn it to solve a specific
> problem. As in throughout the series, in this course, we'll use a
> motivating case study. In this case, it's related to crime in the
> United States. A relevant data set and some basic skills will permit
> us to answer specific questions related to the topic. Imagine you live
> in Europe, and you're offered a job in a US company with many
> locations across all states. It is a great job, but news with
> headlines such as "US Gun Homicide Rate Higher Than Other Developed
> Countries" have you worried. Charts like this one, where we can see
> the US having a much higher homicide rate than other rich countries,
> worries you. You're about to decline the job, but then you wonder if
> perhaps these news reports are a bit sensationalist. You note, for
> example, that other European countries, such as the Lithuania,
> Ukraine, and Russia, are not in this chart, and they have higher rates
> than the US, higher than 4 per 100,000. You're also reminded that the
> US is a large and diverse country with 50 very different states and
> the District of Columbia. California, for example, has a larger
> population than Canada. 20 US states have populations larger than that
> of Norway. In some respects, the variability across states in the US
> may be akin to the variability across countries in Europe. So back to
> your job. You have options of where to live, and want to find out how
> safe each state is. We will do this using R. We will examine data
> related to gun homicides in the US. However, in the first few videos,
> we go over some logistics and introduce general concepts that are the
> building blocks of what comes next. It will not be immediately obvious
> how all these concepts are useful, but later in the course, and later
> in this series, it will become clear. After we're done with the
> basics, we'll have our first real data science experience. We will
> delve into the homicide data, and answer practical, real world
> questions.

Tags: `R`, `Case study`, `logistics`, `General concepts`
---

#### Section 1: R Basics, Functions, and Data Types   1.1 Motivation   Getting Started

# Getting Started

https://youtu.be/Rt-P7Xa47qw

> R is not a programming language like
> C or Java. It was not created by software engineers for software
> development. Instead, it was developed by statisticians and data
> analysts as an interactive environment for data analysis. The
> interactivity is an indispensable feature in data science, because as
> you will soon learn, the ability to quickly explore data is a
> necessity for success in this field. However, like in any other
> programming language, you can save your work in scripts, which you can
> easily execute at any moment. These scripts serve as a record of the
> analysis you performed, a key feature that facilitates reproducible
> work. Other attractive features of R are the following. R as free and
> open source, meaning that you can look at the code. It runs across all
> major platforms-- Windows, Mac OS, Unix, Linux. And data objects and
> scripts can be shared seamlessly across these platforms. There's also
> a large and growing active community of our users. And as a result,
> there are numerous resources for learning and asking questions. It's
> easy for others to contribute add-ons, which enable developers to
> share software implementations of new data science techniques.
> Interactive data analysis usually occurs on the R console. In the R
> console, you can execute commands as you type them. There are several
> ways to gain access to an R console. The most common way is to
> download and install R, and then start it up on your computer. We
> provide installation instructions in the course dashboard. The console
> looks something like this. You can see that you have some information
> about R, which version it is et cetera. And then towards the bottom,
> you see a greater than sign and a cursor. That is where you type your
> commands. When you type an expression into the console and hit Return,
> the expression is evaluated. As a very quick and simple example, try
> using the console to calculate a 15% tip on a meal that costs $19.71.
> Here's how you do it. You just write the numbers out, hit Return, and
> you get your answer. And you should leave a tip of $2.96. One of the
> great advantages of R over point and click analysis software is that
> you can save your work in scripts. You can edit and save these scripts
> using a text editor. We highly recommend working on an interactive,
> integrated development environment in IDE. This includes editor,
> R-specific features, and then it has a console where you execute your
> code. We provide recommendations in the course dashboard. Here's an
> example of an IDE. You can see a pane where you write your scripts,
> another one where you have the console, and other panes with other
> information, as well as a place for your figures and plots to show up.
> R has many, many, many functions, many, many tools for you to use.
> However, the functionality provided by a fresh install of R is only a
> small fraction of that. We refer to what you get after you first
> install R as base R. The extra functionality comes from add-ons
> available from developers. There are currently hundreds of these
> available from CRAN, and many others shared via other repositories
> such as GitHub. However, because not everybody needs all available
> functionality, we instead make different components available via
> packages. R makes it very easy to install packages from within R
> itself. For example, to install the dslabs package, which we have
> created specifically for this course, and we use it to share datasets
> and share code related to the course, you would type install.packages
> ("dslabs"). Then you close the parentheses. Once you hit Return, R
> will automatically install this package. Assuming you're connected to
> the internet. You need to be connected to the internet to download the
> package and install it. IDEs usually provide a graphical user
> interface that facilitates package installation. Once the package is
> installed, we can then load the package into our R session using the
> library function, like this. We type library and in parentheses,
> (dslabs). As you go through this course, you will notice that we load
> packages without installing them. This is because once you install a
> package, it remains in place, and only needs to be loaded with
> library. So if you see us loading a package, it's because we have
> already installed it. Now, if you try to load a package and you get an
> error, it probably means you need to install it first. The error will
> say something like, error in library dslabs, There's no package called
> dslabs.


---

#### Section 1: R Basics, Functions, and Data Types   1.1 Motivation   Installing R and R Studio

For this course, you do not need to install R because we're using DataCamp for all of the assignments. You will learn 
about how to use datacamp's platform next.

### DataCamp

For this course, you do not need to install R because we're using DataCamp for all of the assignments.

To start an assessment, you will click on the button that says Click here to start the assessment, which looks like this: 
<img style="float: right;" src="https://d37djvu3ytnwxt.cloudfront.net/assets/courseware/v1/7d1f6f458f5f9e0fb9c6c8bd5000880f/asset-v1:HarvardX+PH125.1x+2T2017+type@asset+block/clickhere.png">
picture of tart the assessment button, and a new tab will open.

The DataCamp interface has four panels. They are:

* **Information Panel**: General information about the assessment.
* **Instructions Panel**: Exercise instructions. The multiple choice questions appear here when applicable.
* **The Editor**: Here is where you type and edit your answers in the form of R scripts. Example code also appears here.
* **R console**: This is where R commands get executed. You can send commands from the editor but you can also type in commands directly to test out code.
 
![datacamp](https://d37djvu3ytnwxt.cloudfront.net/assets/courseware/v1/8e18afc7674384502bf274a38fea17ae/asset-v1:HarvardX+PH125.1x+2T2017+type@asset+block/DataCamp_Platform.png)

There are two ways to send commands from the editor to the console:

1. If your cursor is on the editor and you hit command-return on a Mac or control-return on Windows that line gets executed.

2. If you hit the Submit Answer button, the entire code in the editor gets executed and your answer is evaluated.

To solve the exercises, type code in the editor. If you want to experiment with R code, you can type code into the console. When you click 
"Submit Answer" you will see that the code is executed in the console. Note that # denotes comments. These are not run as code, instead, 
they tell others what your code is about! 

And remember, after you click Submit Answer in an assessment, your code will be evaluated. If you do not take the hint, you get unlimited tries.

**Tip**: you can try out code before submitting your answer by either typing into the console or pressing "command + return" (mac) or "ctr + return" (pc).

**Tip**: You can see all keyboard shortcuts after most exercises.

![data-submit](https://d37djvu3ytnwxt.cloudfront.net/assets/courseware/v1/0cc6d8b7237515850ed72fd02b30b26b/asset-v1:HarvardX+PH125.1x+2T2017+type@asset+block/after-you-click-submit-answer--you-will-be-taken-to-the-next-exercise.png)

### Installing R

If you want to install R, so you can also work on your own computer, you can download it freely from the Comprehensive R Archive Network (CRAN). R is often updated and can be installed on multiple operating systems. CRAN includes instructions, but if you need further help, you can try the following resources:

* Installing R on [Windows](https://github.com/genomicsclass/windows#installing-r)
* Installing R on [Mac](http://youtu.be/Icawuhf0Yqo)
* Installing R on [Ubuntu](http://cran.r-project.org/bin/linux/ubuntu/README)


### RStudio

RStudio is an integrated development environment (IDE). You can install RStudio through the [RStudio website`(https://www.rstudio.com/products/rstudio/download/).
Their [cheatsheet](https://www.rstudio.com/wp-content/uploads/2016/01/rstudio-IDE-cheatsheet.pdf) is a great resource. 

---

#### Section 1: R Basics, Functions, and Data Types   1.1 Motivation   Using the DataCamp platform

# Using the DataCamp platform

The Click here to start the how-to button below will open a link to DataCamp, a learn-to-code company 
that is serving up all of the assignments for Data Science: R Basics. This UNGRADED assignment gets 
you familiar with the platform.

Once a new window/tab has opened, you will see instructions to the left and the editor to the right, 
where you can type R code to solve the exercises. Remember the # denotes comments that are not run 
as code. You can also execute R commands in the console (below the editor). If you want to experiment 
with R code, type directly into the console. In the course assessments, when you are ready to be graded, 
type into the editor and hit the 'Submit Answer' button.

By clicking OK, you agree to DataCamp's privacy policy: https://www.datacamp.com/privacy-policy. 
Note that you might need to disable your pop-up blocker, or allow "www.datacamp.com" in your pop-up 
blocker allowed list. When you have completed the exercises, return to edX to continue your learning.

### How to use DataCamp (External resource)
By clicking OK, you agree to DataCamp's privacy policy: https://www.datacamp.com/privacy-policy.

Ask your questions about the DataCamp below! Remember that due to the large number of learners in 
the course, staff may not be able to respond to every post, so we encourage you to answer each other's questions. One of the best ways to reinforce your own knowledge of a topic is to explain it to someone else! Also please remember not to post your actual code to any of the questions in the discussion forum.


---

#### Section 1: R Basics, Functions, and Data Types   1.2 R Basics   R Basics

# R Basics

### Objects

https://youtu.be/XEp2pI02InA

> Before we get started with a motivating data set, we
> need to cover the very basics of R. I'm going to start with objects.
> And I'm going to use a very simple example here. Suppose a high school
> student asks us for help solving several quadratic equations of the
> form ax squared plus bx plus c equals 0. We know the quadratic
> equation gives us a solution, shown here. One advantage of programming
> language is that we can define variables and keep such expressions
> general. So, if we are asked to solve x squared plus x minus 1 equals
> 0, and we're going to use the quadratic equation, we can define a to
> be 1, b to be 1, and c to b minus 1. In R, we do that using the
> assignment symbol, which is less than followed by a minus. Note that
> it looks like a little arrow. You're assigning 1 to a, you're
> assigning 1 to b, and you're assigning minus 1 to c. Note that we can
> also use the equals sign for assignment, but we recommend against it,
> because using it can cause confusion. Try this out in your console.
> Try to define a, b, and c in your console. Note that R does not print
> anything out when you make these assignments. This is good. Had you
> made a mistake, you would have received an error message. To see the
> value stored in a, variable we simply type it like this. We type a in
> the console. And when we hit Return, R shows us the value stored in a,
> which is 1. A more explicit way to ask R to show us the value that's
> saved in a variable is to use a print function like this. So we write
> print parentheses, and inside the parentheses, the object name a. We
> use the term object to describe stuff that is stored in R. Variables
> are examples, but objects can also be more complicated entities such
> as functions, which are described later. As we define objects in the
> console, we are actually changing what is called the workspace. You
> can see all the variables saved in your workspace by typing ls(). This
> is a function that shows you the names of the objects saved in your
> workspace. If you type it here, you will see as an answer, a, b, and
> c, the three objects we have defined. IDEs usually have a tab that if
> you click on it, it actually shows you all these variable names. Now,
> if you try to recover the value of a variable that is not in your
> workspace, you'll receive an error. For example, if you type x, which
> we haven't defined, you will receive an error message that says,
> "Error: object 'x' not found." Now, since these values are saved in
> variables, to obtain a solution to our equation, we use the quadratic
> formula. We type it out in R. We do that, we get 0.61 for the first
> solution, and negative 1.61 for the second one.

---

#### Section 1: R Basics, Functions, and Data Types   1.2 R Basics   Functions