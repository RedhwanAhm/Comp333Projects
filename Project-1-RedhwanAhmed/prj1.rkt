#lang racket
; COMP 333
; Redhwan Ahmed
; Project 1


; ROTATE LIST LEFT
; This function rotates the list one element to the left, head wrapping around to tail.
; Hint: If list is empty or one element, value is the original list. Else append the cdr of the lsit to the list consisting of the car.
(define (rotate-list-left x)
  
)


; ROTATE LIST LEFT N-Times
; This function rotates the list to the left 'n' times, head wrapping around to tail.
; Hint: If 'n' is zero, the value is x. Else call the function recursively, replace x with (rotate-list-left x) and 'n' with 'n-1'.
(define (rotate-list-left-n x n)
  
)

; COUNT LIST ELEMENTS
; This function will return the number of elements in the list.
; Hint: If list is empty, return 0. Else 1 + recursive call on the cdr of x.
(define (count-list-elements x)

)

; LIST ELEMENT N
; This function finds the 'nth' element in the list. Elements are numbered from 0 to length-1.
; Hint: If 'n' is 0, value is car of x. Else call the function recursively replacing x with the cdr of x and 'n' with 'n-1'.
(define (list-element-n x n)

)

; LIST MINUS ELEMENT N
; This function will remove the 'nth' element from the list x.
; Hint: If 'n' is 0, value is cdr of x. Else construct car x to the value of the recursive function call, replace x with cdr x, and 'n' with 'n-1'.
(define (list-minus-element-n x n)

)

; ROTATE LIST RIGHT
; This function rotates the list one element to the right, tail wrapping around to head.
; Hint: Find element n-1, cons to list-minus-element n-1.
(define (rotate-list-left x)
  
)

; REVERSE LIST
; This function reverses the list x.
; If list is empty or contains one element, value is x. Else append the recursive call on cdr of x to list of car of x.
(define (reverse-list x)

)

; CONS TO ALL
; Use cons to append a to the head of each element of x. Note that each element of x is a list. Use map to apply operation to each element of a list.
(define (cons-to-all a x)

)

; PERMUTE
; Generate all permutations of the original list. Value is the list of list of all permutations.
; Hint: If list has 1 element, return list of original list version of that one item. If List has 2 elements, return list of original list and reverse of originial list.
; Hint (cont.): Else general case which calls the helper functions defined below.






; Test Cases
(rotate-list-left '())   ; '() 
(rotate-list-left '(a))   ; '(a) 
(rotate-list-left '(a b c))   ; '(b c a) 
(rotate-list-left-n '(a b c) 0)  ; '(a b c) 
(rotate-list-left-n '(a b c d e) 2)  ; '(c d e a b) 
(rotate-list-left-n '(a b c d e) 5)  ; '(a b c d e) 
(count-list-elements '())   ; 0 
(count-list-elements '(a))  ; 1 
(count-list-elements '(a b c d e))  ; 5 
(list-element-n '(a b c d e) 0)  ; 'a 
(list-element-n '(a b c d e) 4)  ; 'e 
(list-element-n '(a b c d e) 1)  ; 'b 
(list-minus-element-n '(a b c d e) 0) ; (b c d e) 
(list-minus-element-n '(a b c d e) 1) ; '(a c d e) 
(list-minus-element-n '(a b c d e) 2) ; '(a b d e) 
(list-minus-element-n '(a b c d e) 4) ; '(a b c d) 
(rotate-list-right '(a b c d e))  ; '(e a b c d) 
(rotate-list-right '(a))   ; '(a) 
(rotate-list-right '(a b))   ; '(b a) 
(rotate-list-right '(a b c d e f g))  ; '(g a b c d e f) 
(reverse-list '(a))   ; '(a) 
(reverse-list '(a b))   ; '(b a) 
(reverse-list '(a b c d e))   ; '(e d c b a) 
(cons-to-all 'a '((b c) (d e) (f g)))  ; '((a b c) (a d e) (a f g)) 
 
(permute '(a b))    ; '((a b) (b a)) 2! = 2 permutations 
(permute '(a b c))   ; '((c a b) (c b a) (b a c) (b c a) (a b c) (a c b)) 3! = 6 permutations 
(permute '(a b c d))

; '((d c a b)  (d c b a)  (d b a c)  (d b c a)  (d a b c)  4! = 24 permutations 
;  (d a c b)  (c d a b)  (c d b a)  (c b a d)  (c b d a) 
;  (c a b d)  (c a d b)  (b d a c)  (b d c a)  (b c a d) 
;  (b c d a)  (b a c d)  (b a d c)  (a d b c)  (a d c b) 
;  (a c b d)  (a c d b)  (a b c d)  (a b d c)) 