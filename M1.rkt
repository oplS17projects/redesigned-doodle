#lang racket

(require graphics/turtles)
(turtles)

;;(draw 30)

;(turn/radians (/ pi 2))
;(draw 100)

;(split (turn/radians (/ pi 4)))
;(split (turn/radians (/ pi 4)))
;(split (turn/radians (/ pi 4)))
;(split (turn/radians (/ pi 4)))
;(split (turn/radians (/ pi 4)))
;(split (turn/radians (/ pi 4)))
;(split (turn/radians (/ pi 4)))
;(split (turn/radians (/ pi 4)))

;(draw 100)


;(turn/radians (/ (* 3 pi) 2))
;(draw 100)

;(turn/radians (/ pi 2))
;(draw 100)

;(turn/radians (/ (* 3 pi) 2))
;(draw 100)




(define (fract n c)
  (fract-iter n 0 c))
(define (fract-iter length count mcount)
  (if (> count mcount)
      count
      ((turn (random 360))
       (draw (random length))
       (fract-iter length (+ count 1) mcount))))

(define (spaced-turtles n)
  (sti 0 (expt 2 n)))
(define (sti count mcount)
  (if (>= count mcount)
      count
      ((split (move-offset 0 10))
       (sti (+ count 1) mcount))))

(define (radial-turtles n)
  (rti 0 (expt 2 n)))
(define (rti count mcount)
  (if (>= count mcount)
      count
      ((split (turn/radians (/ pi (/ mcount 2))))
       (rti (+ count 1) mcount))))

(define (spokes)
  (radial-turtles 3)
  (draw 100))

(define (regular-poly sides length)
  (rpi 0 sides length))
(define (rpi count sides length)
  (if (>= count sides)
      sides
      ((draw length)
       (turn (- (/ (* (- sides 2) 180) sides) 180))
       (rpi (+ count 1) sides length))))

(define (gapped-lines)
  (spaced-turtles 5)
  (draw 100))