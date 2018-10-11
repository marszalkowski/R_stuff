#R Programming: The basics of programming in R (units 1-3)

# 1 Basic Building Blocks
#1.1 calculations and variables
5 + 7
x <- 5 + 7
y <- x - 3
#1.2 creating vectors
  #1.2.1 use c() function to 'concatenate' or 'combine
z <- c(1.1, 9, 3.14)
  #1.2.3 use '?' to ask for help, e.g. ?c to get more info on c() function
  #1.2.4 combine vectors to creat a new vector:
c(z, 555, z)
  #1.2.5 numberic vectors can be used in arithmetic expressions
z * 2 + 100 #multiplies each element by two and then add 100 to each element
my_sqrt <- sqrt(z-1) #subtracts 1 from each element and then takes sqrt of each element
my_div <- z/my_sqrt #first element of my_div is first element z divided by first element my_sqrt etc.
#if vectors are different lengths, R 'recycles the shorter vector until it is the same lenght as the longer
# In other words, when you ask 
#R to compute z * 2 + 100, what it really computes is this: z *
#c(2, 2, 2) + c(100, 100, 100).

#2 Workspace and Files
#2.1 Looking at your workspace
getwd() #shows you what your working directory is
ls() #lists all the objects in you local workspace-all your variables
lis.files() 
dir() #both list all files in working directory
args(list.files) #tells you the arguments for that function
old.dir <- getwd() #assigns the value of the current working dir to a variable
#2.2 Creating directories
  #use dir.create() to create a directory in working directory called testdir
dir.create("testdir")
#2.3 set working directory
setwd("testdir")
#2.4 creat a file in working directory
file.create("mytest.R")
#check to see if file exists in working directory using file,exists()
#access info about "mytest.R" using file.info()
#use file.rename() to rename a file, (from, to)
#make a copy of a file using file,copy
#provide relative path using file.path()
#can use file.path() to make file and directory paths independent of operating system
file.path('folder1', 'folder2')
#create directory and subdirectoy all in one command
dir.create(file.path('testdir2', 'testdir3'), recursive = TRUE)


# 3 Sequences of Numbers
#3.1 Creating sequences - use':' operatory
1:20 #counts forward to 20
pi:10 #counts by ones from pi stays below 10
15:1 #counts down from 15 to 1
#to search for how to use `:` use ?`:`
#3.2 Creating sequences using seq()
seq(1,20) #does same thing as colon operator
seq(0, 10, by=0.5) #creates sequence from 0 to 10 counting by .5
my_seq <- seq(5,10,length=30) #sequence of 30 numbers between 5 and 10
length(my_seq) #tells us how long my_seq is
#create new vector from 1 to the length of my_seq
1:length(my_seq)
seq(along.with = my_seq)
seq_along(my_seq)
#3.3 Creating sequences using the rep() function
rep(0, times = 40) #creates vector with 40 zeros
rep(c(0, 1, 2), times = 10) #creates vector with 10 repetitions of 0,1,2
rep(c(0, 1, 2), each = 10) #creates vector with 10 zeros then 10 ones then 10 twos  
