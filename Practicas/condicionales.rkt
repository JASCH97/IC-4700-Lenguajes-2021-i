#lang racket

(define (quiere-cafe? respuesta)
  (when (eq? respuesta "si") "aqui tiene su cafe"))

(define (es-par-o-impar? n)
  (if (=(remainder n 2) 0)
      "par"
      "impar"))

(define (cast-romano n)
  (case n
    ((1) "I")
    ((2) "II")
    ((3) "III")
    ((4) "IV")
    ((5) "V")
    ((6) "VI")
    ((7) "VII")
    ((8) "VIII")
    ((9) "IX")))

(define (mensaje-por-nota n)
  (cond
    [(< 90 n) "excelente"]
    [(< 80 n) "muy bien"]
    [(< 70 n) "aprobado"]
    [else "reprobado"]))
