#lang racket
#|
Actividad asincronica -> Semana 5 -> Racket
Joan Sanchez Ch
|#

;Funcion que suma dos numeros
(define (sumar)
  (+ (get-number) (get-number)))

;Funcion que resta dos numeros
(define (restar)
  (- (get-number) (get-number)))

;Funcion que multiplica dos numeros
(define (multiplicar)
  (* (get-number) (get-number)))

;Funcion que divide dos numeros
(define (dividir)
  (/ (get-number) (get-number)))

;Funcion que solicita los numeros al usuario
(define (get-number)
  (display "Ingrese un numero: ")
  (string->number(read-line(current-input-port) 'any)))
