#lang racket/base

(require racket/list)

(provide root
         list-links)

(define (root . xs)
  `(main ,@xs))

(define (list-links ls)
  `(ul ,@(map (lambda (l)
                `(li (a ((href ,(second l))) ,(first l)))) ls)))


