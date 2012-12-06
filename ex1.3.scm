(define (larger a b)
  (if (> a b)
      a
      b))

(define (square a)
  (* a a))

(define (sum-of-squares a b)
  (+ (square a) (square b)))

(define (largest a b c)
  (define d (larger a b))
  (if (> d c)
      d
      c))

(define (sum-of-larger-squares a b c)
  (define d (largest a b c))
  (cond ((= d a) (sum-of-squares a (larger b c)))
        ((= d b) (sum-of-squares b (larger c a)))
        ((= d c) (sum-of-squares c (larger b a)))))