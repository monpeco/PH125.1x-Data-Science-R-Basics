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

