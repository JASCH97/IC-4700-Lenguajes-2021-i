#lang racket


#|
Actividad asincronica -> Semana 6 -> Racket
Joan Sanchez Ch
|#


#|

P09:
Pack consecutive duplicates of list elements into sublists.
If a list contains repeated elements they should be placed in separate sublists.

Example:
* (pack '(a a a a b c c a a d e e e e))
((A A A A) (B) (C C) (A A) (D) (E E E E))\

|#

(define (pack lista)
  (cond
    [(empty? lista) null]
    [else
     (cons (juntar lista) (pack (reducir lista)))]))

;Funcion que junta elementos iguales que esten juntos en una lista
(define (juntar lista)
  (cond
    [(empty? lista) null]
    [(empty? (cdr lista)) lista]
    [(equal? (car lista) (car (cdr lista))) (append (list(car lista)) (juntar (cdr lista)))]
    [else (list(car lista))]))

;Funcion que quita elementos iguales seguidos de izquierda a derecha de una lista
(define (reducir lista)
  (cond
    ;[(empty? lista) null]
    [(empty? (cdr lista)) null]
    [(equal? (car lista) (car (cdr lista))) (reducir (cdr lista))]
    [else (cdr lista)]))

#|

P15:
Replicate the elements of a list a given number of times.
Example:
* (repli '(a b c) 3)
(A A A B B B C C C)

|#

(define (repli lista n)
  (cond
    [(null? lista) null]
    [(equal? n 0) "No se puede replicar 0 veces un elemento de la lista"]
    [else
     (append (expand(list(car lista)) (- n 1)) (repli (cdr lista) n))]))

;Funcion que extiende una letra n veces dentro de una lista
(define (expand letra n)
  (cond
    [(equal? n 0) letra]
    [else (expand (append letra (list(car letra))) (- n 1))]))


#|

P33:
Determine whether two positive integer numbers are coprime.
Two numbers are coprime if their greatest common divisor equals 1.
Example:
* (coprime 35 64)
T

|#
(define (coprime n1 n2)
  (if (equal? 1 (gcd n1 n2))
      (write "T")
      (write "F")))


       
           

