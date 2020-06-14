#lang racket/base

(require racket/date
         racket/list
         racket/function
         pollen/decode
         threading
         txexpr)

(provide (all-defined-out))

(define (root . items)
  (decode (txexpr 'div '() items)
          #:txexpr-elements-proc element-handler
          #:block-txexpr-proc (compose1 wrap-hanging-quotes)
          #:string-proc (compose1 smart-quotes smart-dashes)
          #:exclude-tags '(style script ul ol)))

(define (element-handler xs)
  ; Using identity function to ignore line breaks
  (decode-paragraphs xs #:linebreak-proc identity))

(define (list-links ls)
  `(ul ,@(map (lambda (l)
                `(li (a ((href ,(second l))) ,(first l)))) ls)))

(define (last-modified metas)
  (~> metas
      (hash-ref 'here-path)
      file-or-directory-modify-seconds
      seconds->date
      date->string))

(define (masthead title)
  `(h1 ((class "masthead")) ,title))
