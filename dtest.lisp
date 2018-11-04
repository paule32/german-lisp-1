;; -----------------------------------------------------------------------------
;; Lisp Deutsch ...
;; (c) 2018 Jens Kallup - non-profit Software
;; Alle Rechte vorbehalten !!!
;;
;; nur fuer Testzwecke - nicht fuer den kommerziellen Gebrauch !!!
;; -----------------------------------------------------------------------------

(defvar true  1) ;; boolsches "Wahr"
(defvar false 0) ;; boolsches "Falsch"

(defstruct eigenschaften schrift pronomen)      ;; :deutsch :fall
(defstruct properties wort1 wort2 wort3)
;;
(defstruct singular eigenschaften sprache)
(defstruct plural   eigenschaften sprache)
;;
(defstruct nominativ singular plural)
(defstruct genitiv   singular plural)
(defstruct dativ     singular plural)
(defstruct akkusativ singular plural)
;;
;; -----------------------------------------------------------------------------
;; M = männlich
;; W = weiblich
;; S = sächlich
;; -----------------------------------------------------------------------------
(defstruct nomA wfirst wsecond nouns M W S)
(defstruct nomB wfirst wsecond nouns M W S)
(defstruct nomC wfirst wsecond nouns M W S)
;;
(defstruct genA wfirst wsecond nouns M W S)
(defstruct genB wfirst wsecond nouns M W S)
(defstruct genC wfirst wsecond nouns M W S)
;;
(defstruct datA wfirst wsecond nouns M W S)
(defstruct datB wfirst wsecond nouns M W S)
(defstruct datC wfirst wsecond nouns M W S)
;;
(defstruct akkA wfirst wsecond nouns M W S)
(defstruct akkB wfirst wsecond nouns M W S)
(defstruct akkC wfirst wsecond nouns M W S)
;; -----------------------------------------------------------------------------
;;
(defstruct nom nomA nomB nomC)
(defstruct gen genA genB genC)
(defstruct dat datA datB datC)
(defstruct akk akkA akkB akkC)
;;
(defstruct fall  nominativ genitiv dativ akkusativ)
;;
(defstruct wdeutsch fall)
;;

(load "pronomen.lisp")
;;(load "nouns.lisp")

(defstruct erde-deutschland name hauptstadt einwohner)
(defparameter *erde-deutschland*
    (make-erde-deutschland
    :name "Deutschland"
    :hauptstadt "Berlin"
    :einwohner 1000))
;;
(defstruct planet name)
(defstruct land name hauptstadt planet)
(defstruct bio land geboren b gestorben leben s)

(defstruct pers-adamkraft name text bio)
(defparameter *pers-adamkraft*
    (make-pers-adamkraft
    :name "Adam Kraft"
    :text "deutscher Bildhauer und Baumeister (15. Jh)"
    :bio (make-bio
        :land *erde-deutschland*
        :geboren "zwischen 1455 und 1460"
        :b "Schwabach"
        :gestorben "21.01.1509"
        :s "Nürnberg"
        :leben (list
            "Adam Kraft wurde in Nürnberg als Sohn eines Schreiners geboren. "
            "Bis auf die damals üblichen Wanderjahre, die er in Ulm und "
            "Straßburg verbrachte, wirkte er nur in Nürnberg und Umgebung. "
            "Über sein Leben ist nicht viel bekannt. "
            ""
            "Abgesehen von seinen Werken gibt es in den 18 Jahren seiner "
            "Nürnberger Tätigkeit nur sehr wenige Zeugnisse über ihn. "
            "Er erfuhr keine besonderen öffentlichen Ehrungen, erhielt keine Aufträge "
            "von Fürsten, wurde auch nicht in das Kollegium der Genannten des Größeren "
            "Rates berufen. "
            ""
            "Trotz seiner zwei Ehen blieb er wohl kinderlos. "
            "Er hatte nur einen kleinen Betrieb mit zwei oder drei Arbeitern. "
            "Trotz zahlreicher Aufträge befand er sich zeitlebens in finanziellen Nöten."
            ""
            "Adam Kraft wurde in Schwabach bei Nürnberg am 21. Januar 1509 beigesetzt. "
            "Dort ist das Adam-Kraft-Gymnasium nach ihm benannt. "
            "Zu Ehren Adam Krafts wurde seine Büste in der Ruhmeshalle in München aufgestellt. "
            "Auch die Adam-Kraft-Realschule in der Südstadt Nürnbergs ist nach ihm benannt. "
            "Mit dem Bau der Düsseldorfer Kunstakademie wurde sein Name unter den bedeutenden "
            "Bildhauern im Fries der Fassade an der Westseite (Rheinseite) eingemeisselt. " ) 
    )))
;;
(defstruct pers-adamopel name text)
(defparameter *pers-adamopel*
    (make-pers-adamopel
    :name "Adam Opel"
    :text "deutscher Industrieller (19. Jh)"))
    
(defstruct ref-adam kurzform ursprung bedeutung refer namensträger sonstiges)
(defparameter *ref-adam*
    (make-ref-adam
    :kurzform ""
    :ursprung (list
        "aus der Bibel übernommen"
        "Nach der Bibel war Adam der erste, von Gott erschaffene Mensch, aus Ackerboden gebildet und mit Lebensodem erfüllt."
        "männlicher Vorname hebräischen Ursprungs"
        "eigentlich Mensch")
    :bedeutung "s. Ursprung"
    :refer ""
    :namensträger (list
        *pers-adamkraft*
        *pers-adamopel*
    )
    :sonstiges ""
))

(defstruct nounlist-mensch männlich weiblich)
(defparameter *nounlist-mensch*
    (make-nounlist-mensch
    :männlich (list
    (list "Adam" *ref-adam*) "Adolf" "Adolph" "Adrian" "Albrecht" "Albert" "Albero" "Alberich"
    (list "Alex") "Alexander" "Alexis" "Alfonso" "Almar" "Alred" "Alfried" "Alois"
    (list "Alwin") "Amadeus" "Alfons" "Ambrosius" "Anton" "Andreas" "Andrew"
    (list "Andy")
    (list "Hans") "Hänschen"
    (list "Ingo")
    (list "Ingolf")
    (list "Karl") "Kevin"
    (list "Lars") "Leon"
    (list "Jan") "Janosh" "Jens" "Joseph"
    (list "Otto") "Ottfried"
    (list "Ralf") "Ralph"
    (list "Werner") "Wilfried" "Wolfgang")
;;
    :weiblich (list
    "Ada" "Adda" "Adele" "Agathe" "Agnes" "Adriane" "Alexandra" "Alida" "Alice"
    "Aloisa" "Altraud" "Adeltraud" "Alma" "Amalia" "Anastasia" "Anna" "Amata"
    "Alix" "Aline" "Angelika" "Angelina" "Angela" "Andrea" "Angelika"
    "Anita" "Anja" "Anka" "Anke"
    "Maria")
    ))
    
(defparameter *nounlist-männlich-singular-nom* (list
    *nounlist-mensch*
    "Anruf" "Anzug" "Apfel" "April" "Arm" "Arzt" "August" "Ausweis"
    "Bahnhof" "Balkon" "Baum" "Berg" "Beruf" "Bildschirm" "Bus"
    "Computer" "Dezember" "Dienstag" "Durst" "Drucker" "Eintrittskarte"
    "Einwohner" "Fahrschein" "Februar" "Fernseher" "Finger" "Flughafen"
    "Flur" "Frühling" "Füller" "Fuß" "Fußboden" "Garten" "Gast" "Geburtstag"
    "Hafen" "Hamburger" "Herbst" "Herr" "Himmel" "Hut" "Hunger" "Januar"
    "Juli" "Juni" "Kaffee" "Kakao" "Keller" "Kellner" "Kleiderhaken" "Koch"
    "Kongak" "Kuchen" "Kugelschreiber" "Kuchen" "Kunde" "Laden" "Lehrer"
    "Locher" "Löffel" "Mai" "März" "Mann" "Markt" "Marktplatz" "Monitor"
    "Name" "November" "Oktober" "Opa" "Park" "Pass" "Passant" "Platz"
    "Projektor" "Pullover" "Radiergummi" "Regen" "Rock" "Schinken" "Schlüssel"
    "Schnaps" "Schnee" "Schrank" "September" "Sessel" "Sommer" "Star"
    "Strumpf" "Stuhl" "Supermarkt" "Tag" "Tee" "Teppich" "Test" "Tisch"
    "Tourist" "Urlaub" "Vater" "Wagen" "Wein" "Wind" "Winter" "Wunsch"
    "Zeiger" "Zucker" "Zug" "Zuschauer"
    "Vogel" "Mensch" "Staat" "Hund" "Osten" "Sturm" "Sand" "Euro"))
;;
(defparameter *nounlist-weiblich-singular-nom* (list
    "Adresse" "Apfelsine" "Apotheke" "Bank" "Bankkarte" "Bedienung"
    "Beschreibung" "Bestellung" "Bibliothek" "Bluse" "Brille" "Brücke" "City"
    "Cola" "Decke" "Diskette" "Dolmetscherin" "Dose" "Dusche" "Eile"
    "Einladung" "Etage" "Fahrkarte" "Festung" "Fotografie" "Frage" "Funktion"
    "Gabel" "Garage" "Gardine" "Gasse" "Gitarre" "Größe" "Hilfe" "Hose"
    "Hütte" "Information" "Kasse" "Kassette" "Kirche" "Krawatte" "Kreditkarte"
    "Kreide" "Küche" "Kultur" "Lampe" "Landkarte" "Landschaft" "Mandarine"
    "Maschine" "Maus" "Milch" "Mutter" "Mütze" "Nachricht" "Nacht" "Nase"
    "Natur" "Nummer" "Oma" "Oper" "Ordnung" "Pause" "Pflanze" "Pizza"
    "Polizistin" "Post" "Postkarte" "Prüfung" "Reparatur" "Reservierung"
    "Sache" "Sahne" "Schule" "Sehenswürdigkeit" "SMS" "Socke" "Sonne" "Straße"
    "Straßenbahn" "Tasche" "Tasse" "Toilette" "Torte" "U-Bahn" "Überraschung"
    "Übung" "Uhr" "Umwelt" "Universität" "Verbindung" "Wand" "Wanderung"
    "Welt" "Werbung" "Werkstatt" "Wirtschaft" "Woche" "Wurst" "Zeitung" "Frau"
    "Lira" "Schiffe" "Flugzeuge" "Eiche" "Million" "Elbe"))
;;
(defparameter *nounlist-sächlich-singular-nom* (list
    "Kind" "Ohr" "Fenster"
    "Auge" "Auto" "Bad" "Bein" "Bett" "Bier" "Bild" "Brötchen" "Buch" "Café"
    "Einkaufszentrum" "Fahrrad" "Fest" "Flugzeug" "Foto" "Fräulein"
    "Frühstück" "Gefühl" "Gemüse" "Geschäft" "Glas" "Gleis" "Handy" "Haus"
    "Heft" "Hemd" "Hotel" "Huhn" "Kännchen" "Internet" "Kino" "Kleid" "Klo"
    "Leben" "Mädchen" "Messer" "Motorrad" "Museum" "Radio" "Regal" "Restaurant"
    "Schiff" "Schnitzel" "Sofa" "Spiel" "Steak" "Stück" "Taxi" "Telefon"
    "Theater" "Ticket" "Tonbandgerät" "Warenhaus" "Wasser" "Wetter" "Wunder"
    ))
    
(defparameter *nounlist* (list 1 2))

(defstruct relativPronomenSingular nom gen dat akk)
(defparameter relativPronomenSingular
    (make-relativPronomenSingular
        :nom (make-nom
            :nomA (make-nomA
                :wfirst  "der"
                :wsecond "der"
                :nouns *nounlist-männlich-singular-nom*
                :M true
                :W false
                :S false)
            :nomB (make-nomB
                :wfirst  "die"
                :wsecond "die"
                :nouns *nounlist-weiblich-singular-nom*
                :M false
                :W true
                :S false)
            :nomC (make-nomC
                :wfirst  "das"
                :wsecond "das"
                :nouns *nounlist-sächlich-singular-nom*
                :M false
                :W false
                :S true))
        :gen (make-gen
            :genA (make-genA
                :wfirst  "der"
                :wsecond "dessen"
                :nouns *nounlist*
                :M true
                :W false
                :S false)
            :genB (make-genB
                :wfirst  "die"
                :wsecond "der"
                :nouns *nounlist*
                :M false
                :W true
                :S false)
            :genC (make-genC
                :wfirst  "das"
                :wsecond "dessen"
                :nouns *nounlist*
                :M false
                :W false
                :S true))
        :dat (make-dat
            :datA (make-datA
                :wfirst  "der"
                :wsecond "dem"
                :nouns *nounlist*
                :M true
                :W false
                :S false)
            :datB (make-datB
                :wfirst  "die"
                :wsecond "der"
                :nouns *nounlist*
                :M false
                :W true
                :S false)
            :datC (make-datC
                :wfirst  "das"
                :wsecond "die"
                :nouns *nounlist*
                :M false
                :W false
                :S true))
        :akk (make-akk
            :akkA (make-akkA
                :wfirst  "der"
                :wsecond "den"
                :nouns *nounlist*
                :M true
                :W false
                :S false)
            :akkB (make-akkB
                :wfirst  "die"
                :wsecond "die"
                :nouns *nounlist*
                :M false
                :W true
                :S false)
            :akkC (make-akkC
                :wfirst  "das"
                :wsecond "das"
                :nouns *nounlist*
                :M false
                :W false
                :S true))
))

#|
(defstruct bakterium wdeutsch fall)
(defparameter bakterium
    (make-bakterium
    :wdeutsch "bakterium"
    :fall (make-fall
        :nominativ (make-nominativ
            :singular (make-singular
                :eigenschaften (make-eigenschaften
                    :schrift "Bakterium"
                    :pronomen relativPronomenSingular)
                :sprache "bak:terr:ie:um")
            :plural (make-plural
                :eigenschaften (make-eigenschaften
                    :schrift "Bakterien"
                    :pronomen t)
                :sprache "bak:teer:i:en"))
        :genitiv (make-genitiv
            :singular (make-singular
                :eigenschaften (make-eigenschaften
                    :schrift "Bakteriums"
                    :pronomen t)
                :sprache "bak:terr:ie:ums")
            :plural (make-plural
                :eigenschaften (make-eigenschaften
                    :schrift "Bakterien"
                    :pronomen t)
                :sprache "bak:teer:i:en"))
        :dativ (make-dativ
            :singular (make-singular
                :eigenschaften (make-eigenschaften
                    :schrift "Bakterium"
                    :pronomen t)
                :sprache "bak:terr:ie:um")
            :plural (make-plural
                :eigenschaften (make-eigenschaften
                    :schrift "Bakterien"
                    :pronomen t)
                :sprache "bak:teer:i:en"))
        :akkusativ (make-akkusativ
            :singular (make-singular
                :eigenschaften (make-eigenschaften
                    :schrift "Bakterium"
                    :pronomen t)
                :sprache "bak:terr:ie:um")
            :plural (make-plural
                :eigenschaften (make-eigenschaften
                    :schrift "Bakterien"
                    :pronomen t)
                :sprache "bak:teer:i:en"))
            )))
            |#
            
(let ((word "Bakter")) (map 'vector (lambda (suffix) (concatenate 'string word suffix))
#("ium" "ien" "iums" "ien" "ium" "Bakterien" "ium" "ien")))


;;(setf Bakters (let ((word)) (map 'vector (lambda (suffix) (concatenate 'string word suffix))
;;#("iern" "ium" "iums"))))

(setq Bakter (let ((word2 "Bakter")) (let ((word3)) (map 'vector (lambda (suffix) (concatenate 'string word2 suffix))
#("ium")) (let ((word1 "das ")) (concatenate 'string word1 (concatenate 'string word2 (concatenate 'string word3)))))))

;;(defun det-masculine-singular (gn) (format nil "die ~A" gn))
;;(det-masculine-singular Bakter)



(setf test1 '((liste1 (( ich  41)
                       ( mich 42)
                       ( find 43)))
              (liste2 (( you  31)))))

(setf test2 (car (cdr (car test1))))
(setf test3 (find '(find) test2 :test #'subsetp))

(if (eq nil test3) 
        (setf test4 "leer")
        (setf test4 test3))

(print test4)

(loop for x in test2
    do (print (car x)))

(write-char #\NewLine)
(write-char #\NewLine)

(princ "Ihre Eingabe: ")
(setf test5 (read-line))

(print test5)
(setf test6 (concatenate 'string "(" test5 ")" ))
(setf test7 (read-from-string test6))

(print test7)



(print relativPronomenSingular)


;;(loop for x in relativPronomenSingular
;;    do (print (car x)))

(write-char #\NewLine)
