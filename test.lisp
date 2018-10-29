;; -----------------------------------------------------------------------------
;; Lisp Deutsch ...
;; (c) 2018 Jens Kallup
;; -----------------------------------------------------------------------------
(load "duden"    )
(load "adjektive")
(load "pronomen" )

(setq sehkanal  '(katzen fische hunde menschen))
(setq hoerkanal '(
    '(katzen essen fische)
    '(katzen essen keine menschen)
    ))

(print (car hoerkanal))
(exit)
