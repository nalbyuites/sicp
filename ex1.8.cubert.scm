(define (cubert-iter guess old-guess x)
  (if (good-enough? guess old-guess)
      guess
      (cubert-iter (improve guess x)
                   guess x)))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (square x)
  (* x x))

(define (good-enough? guess old-guess)
  (< (abs (- guess old-guess)) 0.001))

(define (cubert x)
  (cubert-iter 1.0 0 x))