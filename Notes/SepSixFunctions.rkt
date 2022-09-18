#lang racket
(define (add-list x)
  (cond
    ((empty? (cdr x)) (car x))
    (else (+ (car x) (add-list(cdr x))))
    )
  )

(define (list-length x)
  (cond
    ((empty? x) 0)
    (else (+ 1 (list-length(cdr x))))
    )
  )