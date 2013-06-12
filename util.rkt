#lang racket
(provide (all-defined-out))

(define (hash-extend σ σ*)
  (for/fold ([σ σ]) ([(a vs) (in-hash σ*)])
    (hash-set σ a vs)))
(define (hash-join σ a vs) (hash-set σ a (set-union (hash-ref σ a (set)) vs)))
(define (hashes-join σ σ*)
  (for/fold ([σ σ]) ([(a vs) (in-hash σ*)])
    (hash-join σ a vs)))

(define-syntax-rule (for/union guards body ...)
  (for/fold ([res (set)]) guards (let ([v (let () body ...)]) (set-union res v))))

(define (set-filter f s)
  (for/set ([a (in-set s)]) (f a)))