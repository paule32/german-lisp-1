;; -----------------------------------------------------------------------------
;; Lisp Deutsch ...
;; (c) 2018 Jens Kallup - non-profit Software
;; Alle Rechte vorbehalten !!!
;;
;; nur für Testzwecke - nicht für den kommerziellen Gebrauch !!!
;; -----------------------------------------------------------------------------
;;
;; Pronomen (Fürwörter)
;; Pronomen stehen für Nomen. Durch Pronomen verhindert man Wiederholungen
;; von Nomen. Pronomen können Nomen auch begleiten.
;;
;; Beispiel:
;; Timo hat heute Geburtstag. _Er_ hat heute Geburtstag.
;; Der Bagger hat das Haus abgerissen. _Er_ hat _es_ abgerissen.
;; -----------------------------------------------------------------------------
(setq personalPronomenSingular
     '(  ( nominativ  ( (ich    (('Person1 nil)      ( (wer) (was) ))) ;; wer oder was
                       (du     (('Person2 nil)      ( (wer) (was) )))
                       (er     (('Person3 männlich) ( (wer) (was) )))
                       (sie    (('Person3 weiblich) ( (wer) (was) )))
                       (es     (('Person3 sächlich) ( (wer) (was) )))))
                    
        ( genitiv    ( (meiner ((Person1) (nil)      ( (wessen) (nil) )))
                       (deiner ((Person2) (nil)      ( (wessen) (nil) )))
                       (seiner ((Person3) (männlich) ( (wessen) (nil) )))
                       (ihrer  ((Person3) (weiblich) ( (wessen) (nil) )))
                       (seiner ((Person3) (sächlich) ( (wessen) (nil) )))))
                    
        ( dativ      ( (mir    ((Person1) (nil)      ( (wem) (nil) )))
                       (dir    ((Person2) (nil)      ( (wem) (nil) )))
                       (ihm    ((Person3) (männlich) ( (wem) (nil) )))
                       (ihr    ((Person3) (weiblich) ( (wem) (nil) )))
                       (ihn    ((Person3) (sächlich) ( (wem) (nil) )))))
                    
        ( akkusativ  ( (mich   ((Person1) (nil)      ( (wen) (was) )))
                       (dich   ((Person2) (nil)      ( (wen) (was) )))
                       (ihn    ((Person3) (männlich) ( (wen) (was) )))
                       (sie    ((Person3) (weiblich) ( (wen) (was) )))
                       (es     ((Person3) (sächlich) ( (wen) (was) )))))))
;; -----------------------------------------------------------------------------
(setq personalPronomenPlural
    '(  ( nominativ  ( (wir     ((Person1) (nil) ( (wer) (was) ))) ;; wer oder was
                       (ihr     ((Person2) (nil) ( (wer) (was) )))
                       (sie     ((Person3) (nil) ( (wer) (was) )))))
                    
        ( genitiv    ( (unser   ((Person1) (nil) ( (wessen) (nil) )))
                       (euer    ((Person2) (nil) ( (wessen) (nil) )))
                       (ihrer   ((Person3) (nil) ( (wessen) (nil) )))))
                    
        ( dativ      ( (uns     ((Person1) (nil) ( (wem) (nil) )))
                       (euch    ((Person2) (nil) ( (wem) (nil) )))
                       (ihnen   ((Person3) (nil) ( (wem) (nil) )))))
                    
        ( akkusativ  ( (uns     ((Person1) (nil) ( (wen) (was) ))) ;; wen oder was
                       (euch    ((Person2) (nil) ( (wen) (was) )))
                       (sie     ((Person3) (nil) ( (wer) (was) )))))))

;; -----------------------------------------------------------------------------
;; Das Reflexivpronomen weist auf das Subjekt zurück (reflektiv = rückbezüglich)
;; Reflexivpronomen kommen im Dativ und Akkusativ vor.
;; In der 1. oder 2. Person und im Genitiv der 3. Person stimmen die
;; reflexiven Formen mit den Formen des Personalpronomen überein.
;; -----------------------------------------------------------------------------
(setq reflexivPronomenSingular
    '(  ( genitiv    ( (meiner  ((Person1) (nil)      ( (wessen) (nil) )))
                       (deiner  ((Person2) (nil)      ( (wessen) (nil) )))
                       (seiner  ((Person3) (männlich) ( (wessen) (nil) )))
                       (ihrer   ((Person3) (weiblich) ( (wessen) (nil) )))
                       (seiner  ((Person3) (sächlich) ( (wessen) (nil) )))))
                    
        ( dativ      ( (mir     ((Person1) (nil)      ( (wem) (nil) )))
                       (dir     ((Person2) (nil)      ( (wem) (nil) )))
                       (sich    ((Person3) (männlich) ( (wem) (nil) )))
                       (sich    ((Person3) (weiblich) ( (wem) (nil) )))
                       (sich    ((Person3) (sächlich) ( (wem) (nil) )))))
                    
        ( akkusativ  ( (mich    ((Person1) (nil)      ( (wen) (was) ))) ;;  "wen oder was"
                       (dich    ((Person2) (nil)      ( (wen) (was) )))
                       (sich    ((Person3) (männlich) ( (wen) (was) )))
                       (sich    ((Person3) (weiblich) ( (wen) (was) )))
                       (sich    ((Person3) (sächlich) ( (wen) (was) )))))))
;; -----------------------------------------------------------------------------
(setq reflexivPronomenPlural
    '(  ( genitiv    ( (unser   ((Person1) (nil) ( (wessen) (nil) )))
                       (euer    ((Person2) (nil) ( (wessen) (nil) )))
                       (ihrer   ((Person3) (nil) ( (wessen) (nil) )))))
                    
        ( dativ      ( (uns     ((Person1) (nil) ( (wem) (nil) )))
                       (euch    ((Person2) (nil) ( (wem) (nil) )))
                       (sich    ((Person3) (nil) ( (wem) (nil) )))))
                    
        ( akkusativ  ( (uns     ((Person1) (nil) ( (wen) (was) ))) ;; wen oder was
                       (euch    ((Person2) (nil) ( (wen) (was) )))
                       (sich    ((Person3) (nil) ( (wen) (was) )))))))

;; -----------------------------------------------------------------------------
;; Possessivpronomen (besiztanzeigendes Fürwort)
;;
;; Beispiel:
;;   Sie hat _ihr_ Deutschbuch dabei.
;;   Sie hat _ihre_ Katze gefüttert.
;;   Wir suchen _unseren_ Parkplatz.
;;   Wir prüfen _unsere_ Leistung.
;; -----------------------------------------------------------------------------
(setq possessivPronomenSingular
    '( personalPronomenSingular
        (ich  ((Person1) (nil)      ))
        (du   ((Person2) (nil)      ))
        (er   ((Person3) (männlich) ))
        (sie  ((Person3) (weiblich) ))
        (es   ((Person3) (sächlich) ))
                                 
        (mein ((Person1) (nil)      ))
        (dein ((Person2) (nil)      ))
        (sein ((Person3) (männlich) ))
        (ihr  ((Person3) (weiblich) ))
        (sein ((Person3) (sächlich) ))))
;; -----------------------------------------------------------------------------
(setq possessivPronomenPlural
    '(personalPronomenPlural
        (wir   (Person1))
        (ihr   (Person2))
        (sie   (Person3))
        ;;
        (unser (Person1))
        (euer  (Person2))
        (ihr   (Person3))))

;; -----------------------------------------------------------------------------
;; Relativpronomen: (bezügliches Fürwort)
;; "der, die das, welcher, welche, welches, wer und was" stehen am
;; Anfang eines Relativsatzes. "der, die und das" sind die häufigsten
;; Relativpronomen.
;; Das Relativpronomen bezieht sich auf ein vorangehendes Nomen.
;; -----------------------------------------------------------------------------
;; todo: liste: mann, frau, bild ...
(setq relativPronomenSingular '(
    ( nominativ (der Mann der    (( männlich ) ( (wer) (was) ))) ;; wer oder was
                (die Frau die    (( weiblich ) ( (wer) (was) )))
                (das Bild das    (( sächlich ) ( (wer) (was) ))))
    
    ( genitiv   (der Mann dessen (( männlich ) ( (wessen) (nil) )))
                (die Frau der    (( weiblich ) ( (wessen) (nil) )))
                (das Bild dessen (( sächlich ) ( (wessen) (nil) ))))
                  
    ( dativ     (der Mann dem    (( männlich ) ( (wem) (nil) )))
                (die Frau der    (( weiblich ) ( (wem) (nil) )))
                (das Bild die    (( sächlich ) ( (wem) (nil) ))))
                  
    ( akkusativ (der Mann den    (( männlich ) ( (wen) (was) )))
                (die Frau die    (( weiblich ) ( (wen) (was) )))
                (das Bild das    (( sächlich ) ( (wen) (was) ))))))
;; -----------------------------------------------------------------------------
(setq relativPronomenPlural '(
    ( nominativ (die Männer die   (( männlich ) ( (wer) (was) )))
                (die Frauen die   (( weiblich ) ( (wer) (was) )))
                (die Bilder die   (( sächlich ) ( (wer) (was) ))))
    
    ( genitiv   (die Männer deren (( männlich ) ( (wessen) (nil) )))
                (die Frauen deren (( weiblich ) ( (wessen) (nil) )))
                (die Bilder deren (( sächlich ) ( (wessen) (nil) ))))
                  
    ( dativ     (die Männer denen (( männlich ) ( (wem) (nil) )))
                (die Frauen denen (( weiblich ) ( (wem) (nil) )))
                (die Bilder denen (( sächlich ) ( (wem) (nil) ))))
    
    ( akkusativ (die Männer die   (( männlich ) ( (wen) (was) )))
                (die Frauen die   (( weiblich ) ( (wen) (was) )))
                (die Bilder die   (( sächlich ) ( (wen) (was) ))))))

;; -----------------------------------------------------------------------------
;; der, die das... Deklination der Demonstrativpronomen:
;; -----------------------------------------------------------------------------
(setq demonstrativpronomen '(
    ( nominativ  (dieser  (männlich ( (wer) (was) ))) ;; wer oder was
                 (diese   (weiblich ( (wer) (was) )))
                 (dieses  (sächlich ( (wer) (was) )))
                 (diese   (plural   ( (wer) (was) )))
                  
    ( genitiv    (dieses  (männlich ( (wessen) (nil) )))
                 (dieser  (weiblich ( (wessen) (nil) )))
                 (dieses  (sächlich ( (wessen) (nil) )))
                 (dieser  (plural   ( (wessen) (nil) ))))
                  
    ( dativ      (diesem  (männlich ( (wem) (nil) )))
                 (dieser  (weiblich ( (wem) (nil) )))
                 (diesem  (sächlich ( (wem) (nil) )))
                 (diesen  (plural   ( (wem) (nil) ))))
                  
    ( akkusativ  (diesen  (männlich ( (wen) (was) ))) ;; wen oder was
                 (diese   (weiblich ( (wen) (was) )))
                 (dieses  (sächlich ( (wen) (was) )))
                 (diese   (plural   ( (wen) (was) )))))))

;; -----------------------------------------------------------------------------
;; Interrogativpronomen sind: wer, was, wen, wem, welcher ...
;; Beispiel:
;;    Wer hat die Antwort?
;;    Was ist verkehrt?
;;    Wen hast du geärgert?
;;    Wem wurde etwas gestohlen?
;; -----------------------------------------------------------------------------
(setq interrogativPronomen '(
     ( nominativ  (welcher          (männlich ( (wer) (was) ))) ;; wer oder was
                  (was für einer    (männlich ( (wer) (was) )))
                  (welche           (weiblich ( (wer) (was) )))
                  (was für eine     (weiblich ( (wer) (was) )))
                  (welches          (sächlich ( (wer) (was) )))
                  (was für ein      (sächlich ( (wer) (was) )))
                  (welche           (plural   ( (wer) (was) )))
                  (was für welche   (plural   ( (wer) (was) ))))
                  
     ( genitiv    (welches          (männlich ( (wessen) (nil) )))
                  (was für eines    (männlich ( (wessen) (nil) )))
                  (welcher          (weiblich ( (wessen) (nil) )))
                  (was für einer    (weiblich ( (wessen) (nil) )))
                  (welches          (sächlich ( (wessen) (nil) )))
                  (was für eines    (sächlich ( (wessen) (nil) )))
                  (welcher          (plural   ( (wessen) (nil) )))
                  (was für welcher  (plural   ( (wessen) (nil) ))))
                  
     ( dativ      (welchem          (männlich ( (wessen) (nil) )))
                  (was für einem    (männlich ( (wessen) (nil) )))
                  (welcher          (weiblich ( (wessen) (nil) )))
                  (was für einer    (weiblich ( (wessen) (nil) )))
                  (welchem          (sächlich ( (wessen) (nil) )))
                  (was für einem    (sächlich ( (wessen) (nil) )))
                  (welchen          (plural   ( (wessen) (nil) )))
                  (was für welchen  (plural   ( (wessen) (nil) ))))
                  
     ( akkustiv   (welchen          (männlich ( (wessen) (nil) )))
                  (was für einen    (männlich ( (wessen) (nil) )))
                  (welche           (weiblich ( (wessen) (nil) )))
                  (was für eine     (weiblich ( (wessen) (nil) )))
                  (welches          (sächlich ( (wessen) (nil) )))
                  (was für ein      (sächlich ( (wessen) (nil) )))
                  (welche           (plural   ( (wessen) (nil) )))
                  (was für welche   (plural   ( (wessen) (nil) ))))))


