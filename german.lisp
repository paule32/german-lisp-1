(in-package :cl-user)

(defun strcat (&rest strings)
  (format nil "~{~A~}" strings))

(deftype german-case   () `(member :nominative :accusative :dative :genitive))
(deftype german-gender () `(member :masculine :feminine :neuter))
(deftype german-number () `(member :singular :plural))

(defun definite-article (case gender number)
  (ecase case
    (:nominative (ecase number
                   (:singular (case gender
                                (:masculine "der")
                                (:feminine  "die")
                                (:neuter    "das")))
                   (:plural "die")))
    (:accusative (ecase number
                   (:singular (case gender
                                (:masculine "den")
                                (:feminine  "die")
                                (:neuter    "das")))
                   (:plural "die")))
    (:dative     (ecase number
                   (:singular (case gender
                                (:masculine "dem")
                                (:feminine  "der")
                                (:neuter    "dem")))
                   (:plural "den")))
    (:genitive   (ecase number
                   (:singular (case gender
                                (:masculine "des")
                                (:feminine  "der")
                                (:neuter    "des")))
                   (:plural "der")))))


(defun der-word-p (stem)
  (member stem '("dies" "jed" "welch" "jen" "manch" "solch") :test (function string-equal)))

(defun der-word-suffix (case gender number)
  (ecase case
    (:nominative (ecase number
                   (:singular (case gender
                                (:masculine "er")
                                (:feminine  "ie")
                                (:neuter    "es")))
                   (:plural "ie")))
    (:accusative (ecase number
                   (:singular (case gender
                                (:masculine "en")
                                (:feminine  "ie")
                                (:neuter    "es")))
                   (:plural "ie")))
    (:dative     (ecase number
                   (:singular (case gender
                                (:masculine "em")
                                (:feminine  "er")
                                (:neuter    "em")))
                   (:plural "en")))
    (:genitive   (ecase number
                   (:singular (case gender
                                (:masculine "es")
                                (:feminine  "er")
                                (:neuter    "es")))
                   (:plural "er")))))


(defun n-word-suffix (case gender number)
;;  (assert (eql gender :masculine))
  (ecase case
    (:nominative (ecase number
                   (:singular "")
                   (:plural "er")))
    (:accusative (ecase number
                   (:singular "")
                   (:plural "er")))
    (:dative     (ecase number
                   (:singular "e")
                   (:plural "ern")))
    (:genitive   (ecase number
                   (:singular "s")
                   (:plural "er")))))


(defun inflect (stem case gender number)
  (cond
    ((der-word-p stem)
     (strcat stem (der-word-suffix case gender number)))
    #| … test of other classes of words |#
    (#|masculine word ending in -n|# t
     (strcat stem (n-word-suffix case gender number))                                
     )
    (t
     #| write here the general case |#
     )))

(let ((stem "Mann")
      (case :genitive)
      (gender :masculine)
      (number :singular))
  (strcat (definite-article case gender number)
          " " (inflect stem case gender number)))
;; --> "des Manns"


;; then you could write something like:
(defparameter sentence '((:noun :definite   " Mann"       :nominative :masculine :singular)
                           (:noun :definite   " König"    :genitive   :neuter    :singular)
;;;                           (:noun :indefinite "Aktentasch" :accusative :feminine  :singular)
                           (:verb "nehmen" :present :3rd :singular)))

(defun generate (sentence)
  (format nil "~{~A~^ ~}"
          (mapcar (lambda (word)
                    (ecase (pop word)
                      (:noun (strcat (apply (ecase (pop word)
                                              (:definite   (function definite-article)))
                                              ;(:indefinite (function indefinite-article)))
                                            (rest word))
                                     (apply (function inflect) word)))
                      (:verb #|conjugate the verb!|#"")))
                  sentence)))
(print (generate sentence))
