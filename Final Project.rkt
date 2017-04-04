#lang racket

(require graphics/turtles)
(turtles)

;;(draw 30)

;(turn/radians (/ pi 2))
;(draw 100)

(split (turn/radians (/ pi 2)))
(split (turn/radians (/ pi 2)))
(split (turn/radians (/ pi 2)))

(draw 10)


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

