#lang racket
(define (crear_arbol)
  '()
 )

(define (raiz_arbol arb)
  (if (null? arb)
      '()
      (car arb))
  )

(define (lista_nodo arb)
  (if (null? arb)
      '()
      (car (cdar arb)))
  )

(define (rama_izq_arb arb)
  (if (null? arb)
      '()
      (car (cdr arb)))
  )

(define (rama_der_arb arb)
  (if (null? arb)
      '()
      (car (cddr arb)))
  )

(define (buscar_letra arb ltr)
  (cond [(null? arb) #f]
        [(equal? (caar arb) ltr) #t]
        [(equal? (buscar_letra (rama_izq_arb arb) ltr) #t)]
        [else (buscar_letra (rama_der_arb arb) ltr)]
  )
 )

(define (insertar_letra arb ltr pal sig)
  (cond
    [(null? ltr) (display "Debe digitar una letra") arb]
    [(equal? (buscar_letra arb ltr) #t) (insertar_letra_aux arb ltr pal sig 0)]
    [else (insertar_letra_aux arb ltr pal sig 1)]
    )
  )

(define (insertar_palabra arb ltr pal sig)
  (cond
    [(null? arb) ]
    
    )
  )

(define (insertar_letra_aux arb ltr pal sig ban)
  (cond
    
    [(and (null? arb) (equal? ban 0)) (list (list pal sig))]
    [(null? arb) (list (list ltr (list (list pal sig ))) '() '())]
    [(> (char->integer ltr) (char->integer (car (raiz_arbol arb)))) (list (raiz_arbol arb) (rama_izq_arb arb) (insertar_letra_aux (rama_der_arb arb) ltr pal sig ban))]
    [(equal? ltr (car (raiz_arbol arb))) (list (list (car (raiz_arbol arb)) (append (lista_nodo arb) (insertar_letra_aux '() ltr pal sig ban))) (rama_izq_arb arb) (rama_der_arb arb))]
    [else (list (raiz_arbol arb) (insertar_letra_aux (rama_izq_arb arb) ltr pal sig ban) (rama_der_arb arb))]
    )
  )

(define (imprimir_en_orden arb)
  (cond
    [(not (null? arb)) (imprimir_en_orden (rama_izq_arb arb)) (display (car(raiz_arbol arb))) (display "\n\n") (imprimir_palabras (lista_nodo (list (raiz_arbol arb)))) (imprimir_en_orden (rama_der_arb arb))]
    )
  )

(define (imprimir_palabras arb)
  (cond
    [(null? arb) ""]
    [else (display "Palabra: ")
          (display (caar arb))
          (display "\nSignificado: ")
          (display (cdar arb))
          (display "\n\n") (imprimir_palabras (cdr arb))]
    )
  
  )

(define A (crear_arbol))
(set! A (insertar_letra A #\a "acachete" "Estar bien"))
(set! A (insertar_letra A #\a "ahuevado" "Estar triste"))
(set! A (insertar_letra A #\a "a" "aaa"))
(set! A (insertar_letra A #\b "bruto" "Ser corto de mente"))
(set! A (insertar_letra A #\b "b" "bbb"))
(imprimir_en_orden A) 
