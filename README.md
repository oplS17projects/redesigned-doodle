# Redesigned-Doodle
 Scott Quinn and Harsh Patel
# Redesigned-Doodle

### Statement

We are going to replicate the examples given inside the turtle-examples library. We will prompt the user to choose what they want and with the bress of a button it would be created and they can choose if they would like to save it as a file. It is interesting because it would give a deeper understanding of the turtles and GUI library. Personally I find it interesting because I enjoyed playing around with the library. I hope to learn how this library works. 

### Analysis
Explain what approaches from class you will bring to bear on the project.

Be explicit about the techiques from the class that you will use. For example:

- Will you use data abstraction? How?

Replicating the Sierpinski triangle function and Koch snowflake function both use recursive calls.

[//]:<>(- Will you use map/filter/reduce? How? 
[//]:<>(- Will you use object-orientation? How?)
[//]:<>(- Will you use functional approaches to processing your data? How?)
[//]:<>(- Will you use state-modification approaches? How? If so, this should be encapsulated within objects. `set!` pretty much should only exist inside an object.)
[//]:<>(- Will you build an expression evaluator, like we did in the symbolic differentatior and the metacircular evaluator?)
[//]:<>(- Will you use lazy evaluation approaches?)





### Deliverable and Demonstration

At the end of the project sequence we should be able to do all that the examples libary does and more.


Our project will just be a series of functions that should be able to be run from any instance of racket.



It will be interactive by typing having the user press buttons to select what they want to be drawn.

### Evaluation of Results

If it actually draws things onto the screen we would consider it to be sucessful.

## Architecture Diagram
![AD](/AD.png?raw=true"AD")

The user interacts with the help of the GUI library. The GUI library is the intermediate between the user and the turtles library.
The diagram splits the basic functions of the turtle library into 2 general categories: Moving the turtle and manipulating the turtle. Moving does just that. It moves the turtle. There it draws, erases, and turns the turtle. This also includes the offset type for each type of function. The other part is manipulation. This is used to indirectly influence the image being drawn such as creating multiple turtles. 

## Schedule
We would go step by step through the examples and when they are operating successfully we would continue to the next. Repeat until done.
There are three deliverable milestones to explicitly define, below.

The nature of deliverables depend on your project, but may include things like processed data ready for import, core algorithms implemented, interface design prototyped, etc. 

You will be expected to turn in code, documentation, and data (as appropriate) at each of these stages.

Write concrete steps for your schedule to move from concept to working system. 

### First Milestone (Sun Apr 9)
Which portion of the work will be completed (and committed to Github) by this day? 
-We will do the first 6 examples (until gapped-lines)
-We should also be done with the user interface.

### Second Milestone (Sun Apr 16)
Which portion of the work will be completed (and committed to Github) by this day? 
-Sierpinski triangle and Koch snoflake done 

### Public Presentation (Mon Apr 24, Wed Apr 26, or Fri Apr 28 [your date to be determined later])
What additionally will be completed before the public presentation?
-Ideally, we would have the completed library for the presentation.

## Group Responsibilities
Here each group member gets a section where they, as an individual, detail what they are responsible for in this project. Each group member writes their own Responsibility section. Include the milestones and final deliverable.

Please use Github properly: each individual must make the edits to this file representing their own section of work.

### Harsh Patel @hpatel28
Harsh will work on designing the GUI that will let the user choose what they would like to be drawn.

### Scott Quinn @Scott-Quinn
Scott is team lead. Additionally, Scott will work on replicating the turtle examples.
