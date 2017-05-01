# Redesigned-doodle

## Scott Quinn
### April 30, 2017

# Overview
Originally, we were going to try our best to replicate the turtles examples. 
After a few weeks we managed to figure out how to get it running.
With that knowledge we changed the project to simply try it ourselves, and draw things that would be interesting to us.
We also tried to have the user run select the program they wanted to run by having a gui that they could pick and choose,
but I'm not sure if we got that running or not. 
**Authorship note:** Most of the code described here was written by myself.

# Libraries Used
The code uses four libraries:

```
(require graphics/turtles)
(require graphics/turtle-examples)
```

* The ```graphics/turtles``` library provides the ability to draw inside the turtle window
* The ```graphics/turtle-examples``` while not used in the file, provided ideas on what we could do.

# Key Code Excerpts

Here is a discussion of the most essential procedures, including a description of how they embody ideas from 
UMass Lowell's COMP.3010 Organization of Programming languages course.

Five examples are shown and they are individually numbered. 

## 1. Data Abstraction

We were supposed to have a gui that the user picked what they wanted to have done. Adding an intermediate between the user and the
programs is an example of data abstraction but it did not turn out that way. Data abstraction is a fundamental part to all programming.
If not we would be using primitives to do everything.

An example of data abstraction from my code is:
```
(define (pattern-poly sides radius)
  (define (pattern-poly-helper s r t)
    (cond
      [(> t s) (void)]
      [(tprompt (turn (* (- (* 2 t) 1)(/ 180 s)))
                (move  (* 2 (* r (cos (/ pi s)))))
                (cond
                  [(even? s) (turn (/ 180 s))])
                (regular-poly s r))
       (pattern-poly-helper s r (+ t 1))]))
  (pattern-poly-helper sides radius 1))
  ```
 
## 2. Recursion

For my part recursion was the principle that was used the most, or at least the most noticable. For most of my programs I started
with a simple procedure and then I did recursive calls to those procedures within loops.
```
(define (illusion-b)
  (turn 45)
  (regular-polys 4 10)
  (regular-polys 4 10)
  (regular-polys 4 10)
  (move-offset 20 0)
  (turn -45))
(define (illusion-l l)
  ;(turn 45)
  (define (llh l)
    (cond
      [(zero? l) (void)]
      [(illusion-b)
       (llh (sub1 l))]))
  (llh l)
  (move-offset (* -20 l) 20))
(define (illusion l)
 (define (ich l c)
   (cond
     [(zero? c) (void)]
     [(illusion-l l)
      (ich l (sub1 c))]))
  (ich l l))
  ```
  Essentially what I was doing was making nested loops to recursively draw the squares.


## 3. Conditional statements
In my part conditional statements was the second necessity in order to make the nested loops operate properly.
All looping statements need a termination point where the loop will no longer run. Having the loop terminate because 
the counter has reached its end point is necessary.

```
(define (checkers-board r)
  (define (cbh r c)
    (cond
      [(zero? c) (void)]
      [(checkers-line r)
       (alt-checkers-line r)
       (cbh r (sub1 c))]))
  (cbh r r))
  ```
There the condition makes up almost the entire body of the procedure.
  
