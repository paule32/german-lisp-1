;; -----------------------------------------------------------------------------
;; Lisp Deutsch ...
;; (c) 2018 Jens Kallup - non-profit Software
;; Alle Rechte vorbehalten !!!
;;
;; nur fuer Testzwecke - nicht fuer den kommerziellen Gebrauch !!!
;; -----------------------------------------------------------------------------

;; -----------------------------------------------------------------------------
;; ein paar kürzel, zur Speicherreduktion ...
;; -----------------------------------------------------------------------------
(defvar s1 1) (defvar s2 2) (defvar m1 4) (defvar w1 8)

(defvar substantiv s1)
(defvar sächlich   s2)
(defvar männlich   m1)
(defvar weiblich   w1)

(defstruct singular schrift sprache)
(defstruct plural   schrift sprache)
;;
(defstruct nominativ singular plural)
(defstruct genitiv   singular plural)
(defstruct dativ     singular plural)
(defstruct akkusativ singular plural)
;;
(defstruct fall nominativ genitiv dativ akkusativ)
;;
(defstruct deutsch  fall wortart)
(defstruct englisch fall wortart)
;;
(defstruct duden deutsch englisch)
(defparameter bakterium
    (make-bakterium :deutsch
        (make-fall
        :nominativ
            (make-singular
                :schrift *Bakterium*
                :sprache "bak:terr:ie:um")
            (make-plural
                :schrift (die Bakterien)
                :sprache ("bak:teer:i:en"))
        :genitiv
            (make-singular
                :schrift (des Bakteriums)
                :sprache ("bak:terr:ie:ums"))
            (make-plural
                :schrift (der Bakterien)
                :sprache ("bak:teer:i:en"))
        :dativ
            (make-singular
                :schrift (dem Bakterium)
                :sprache ("bak:terr:ie:um"))
            (make-plural
                :schrift (den Bakterien)
                :sprache ("bak:teer:i:en"))
        :akkusativ
            (make-singular
                :schrift (das Bakterium)
                :sprache ("bak:terr:ie:um"))
            (make-plural
                :schrift (die Bakterien)
                :sprache ("bak:teer:i:en")))
    (make-bakterium :englisch)))

;; -----------------------------------------------------------------------------
#|(setq Bakterium '(
    ( nominativ (
        (singular ((schrift (das Bakterium)) (aussprache ("bak:terr:ie:um"))))
        (plural   ((schrift (die Bakterien)) (aussprache ("bak:teer:i:en"))))))
    ;;
    ( genitiv (
        (singular ((schrift (des Bakteriums)) (aussprache ("bak:terr:ie:ums"))))
        (plural   ((schrift (der Bakterien))  (aussprache ("bak:teer:i:en"))))))
    ;;
    ( dativ (
        (singular ((schrift (dem Bakterium)) (aussprache ("bak:terr:ie:um"))))
        (plural   ((schrift (den Bakterien)) (aussprache ("bak:teer:i:en"))))))
    ;;
    ( akkusativ (
        (singular ((schrift (das Bakterium)) (aussprache ("bak:terr:ie:um"))))
        (plural   ((schrift (die Bakterien)) (aussprache ("bak:teer:i:en"))))))
    ;;
    ( wortart (
        (w1 substantiv)
        (w2 sächlich)))
    ;;
    ( kontext  (lebewesen))
    ( trennung ( (Bak te ri um) (Bak te ri en) ))
    ;;
    ( untergruppe (Bazilluz Kokkus Salmonelle))
    ( oberegruppe (Prokaryot Lebewesen))
    ;;
    ( definition (1 (format t "Biologie: einzelliges, prokaryotisches ~
                               Lebewesen ohne Zellkern ")))
    ( anwendung  (1 (format t "Hartkäse reift durch Bakterien.")))))
    |#
;; -----------------------------------------------------------------------------
(setq Biologie '(
    ( nominativ (
        (singular ((schrift (die Biologie)) (aussprache ("bi:o:lo:gie"))))
        (plural   ((schrift (die Biologie)) (aussprache ("bi:o:lo:gie"))))))
    ;;
    ( genitiv   (
        (singular ((schrift (der Biologie)) (aussprache ("bi:o:lo:gie"))))
        (plural   ((schrift (der Biologie)) (aussprache ("bi:o:lo:gie"))))))
    ;;
    ( dativ     (
        (singular ((schrift (der Biologie)) (aussprache ("bi:o:lo:gie"))))
        (plural   ((schrift (der Biologie)) (aussprache ("bi:o:lo:gie"))))))
    ;;
    ( akkusativ (
        (singular ((schrift (die Biologie)) (aussprache ("bi:o:lo:gie"))))
        (plural   ((schrift (die Biologie)) (aussprache ("bi:o:lo:gie"))))))
    ;;
    ( wortart (
        (w1 substantiv)
        (w2 weiblich)))
    ;;
    ( kontext  (wissenschaft))
    ( trennung (Bio lo gie))
    ;;
    ( untergruppe (
        Astrobiologie Baubiologie Biochemie Bionik Biogeographie
        Bioinformatik Biophysik Biotechnologie Botanik Pflanzenkunde
        Chronobiologie Entwicklungsbiologie Evolutionsbiologie
        Exobiologie Genetik Immunbiologie Humanbiologie Hydrobiologie
        Infektionsbiologie Meeresbiologie Populationsbiologie
        Reproduktionsbiologie Soziobiologie Molekularbiologie
        Mikrobiologie Molekularbiologie Neurobiologie Mykologie Pilzkunde
        Ökologie Pharmabiologie Strahlenbiologie Strukturbiologie
        Süßwasserbiologie Systematik Taxonomie Tumorbiologie
        Verhaltensbiologie Wildbiologie Zellbiologie Zoologie Tierkunde))
    ;;
    ( oberegruppe (Naturwissenschaft Wissenschaft Unterrichtsfach))
    ( definition
        (1 (format t "die Lehre beziehungsweise Naturwissenschaft vom ~
                      Leben, allgemein von allem Lebendigen"))
        (2 (format t "ein Unterrichtsfach")))
    ( anwendung
        (1 (format t "Petra studiert Biologie"))
        (2 (format t "In der 5. Stunde haben wir Biologie.")))))
;; -----------------------------------------------------------------------------
(setq Katze '(
    ( nominativ (
        (singular ((schrift (die Katze))  (aussprache ("katße"))))
        (plural   ((schrift (die Katzen)) (aussprache ("katzenn"))))))
    ;;
    ( genitiv   (
        (singular ((schrift (der Katze))  (aussprache ("katße"))))
        (plural   ((schrift (der Katzen)) (aussprache ("katzenn"))))))
    ;;
    ( dativ     (
        (singular ((schrift (der Katze))  (aussprache ("katße"))))
        (plural   ((schrift (den Katzen)) (aussprache ("katzenn"))))))
    ;;
    ( akkusativ (
        (singular ((schrift (die Katze))  (aussprache ("katße"))))
        (plural   ((schrift (die Katzen)) (aussprache ("katzenn"))))))
    ;;
    ( wortart (
        (w1 substantiv)
        (w2 weiblich)))
    ;;
    ( kontext  (säugetier))
    ( trennung ( (kat ze) (kat zen) ))
    ;;
    ( untergruppe (
        Kater Kätzin Angorakatze Perserkatze Siamkatze Andenkatze
        Bengalkatze Borneokatze Waldkatze Falbkatze Fischkatze
        Flachkopfkatze Gepard Goldkatze Großkatze Iriomotekatze Jaguar
        Karakal Leopard Löwe Luchs Manul Marguay Marmorkatze Nebelparder
        Ozelot Ozelotkatze Pampaskatze Puma Rohrkatze Rostkatze Salzkatze
        Sandkatze Schneeleopard Schwarzfußkatze Serval Steppenkatze Tiger
        Wildkatze))
    ;;
    ( oberegruppe ( säugetier haustier ))
    ( definition (1
        (format t "dem Menschen verbundenes, anschmiegsames ~
                   Haustier, in zahlreichen Rassen gezüchtet")))
    ;;
    ( anwendung
        (1 (format t "Eine Katze jagt eine Maus"))
        (2 (format t "Ist das eine Katze oder ein Kater?"))
        (3 (format t "Katzen sind Jäger mit sehr guter Nachtsicht")))))
;; -----------------------------------------------------------------------------
;;(setq Katzen Katze)
;; -----------------------------------------------------------------------------
(setq Fisch '(
    ( nominativ (
        (singular ((schrift (der Fisch))  (aussprache ("fischh"))))
        (plural   ((schrift (die Fische)) (aussprache ("fischhe"))))))
    ;;
    ( genitiv (
        (singular ((schrift (des Fisches)) (aussprache ("fischhes"))))
        (plural   ((schrift (der Fisch))   (aussprache ("fischh:"))))))
    ;;
    ( dativ (
        (singular ((schrift (dem Fische))  (aussprache ("fischhe"))))
        (plural   ((schrift (den Fischen)) (aussprache ("fischhenn"))))))
    ;;
    ( akkusativ (
        (singular ((schrift (den Fisch))  (aussprache ("fischh"))))
        (plural   ((schrift (die Fische)) (aussprache ("fischhe"))))))
    ;;
    ( wortart (
        (w1 substantiv)
        (w2 männlich)))
    ;;
    ( kontext  ( (lebewesen) (tier) ))
    ( trennung ( (fi sch) (fi sche) ))
    ;;
    ( untergruppe (
        Braunfisch Milchner Rogner Aal Barsch Butt Flunder Forelle
        Goldfisch Hai Hasel Häsling Hecht Hering Kabeljau Karpfen Lachs
        Makrele Maräne Nase Quappe Renke Saibling Sardelle Sardine Schmerle
        Schellfisch Schneider Scholle Schwertfisch Steinbeißer Stichling
        Stör Thunfisch Weißfisch Wels Zander Backfisch Bückling Rollmops
        Stockfisch Trockenfisch Bratfisch))
    ;;
    ( oberegruppe ( säugetier haustier ))
    ( definition
        (1 (format t "dem Menschen verbundenes, anschmiegsames ~
                      Haustier, in zahlreichen Rassen gezüchtet")))
    ;;
    ( anwendung
        (1 (format t "Zoologie: Tier, das unter Wasser lebt und ~
                      durch Kiemen atmet"))
        (2 (format t "kein Plural: Fleisch von 1) als Lebensmittel"))
        (3 (format t "zwölftes Sternbild auf der Ekliptik (Tierkreiszeichen) ~
                      üblich ist hier der Gebrauch des Plurals die Fische ~
                      oder ein in diesem Sternbild Geborener ~
                      (hier auch Singular)")))))
;; -----------------------------------------------------------------------------
(setq Lebewesen '(
    ( nominativ  (
        (singular ((schrift (das Lebewesen)) (aussprache ("Le:Be:weßen"))))
        (plural   ((schrift (die Lebewesen)) (aussprache ("Le:Be:weßen"))))))
    ;;
    ( genitiv   (
        (singular ((schrift (des Lebewesen)) (aussprache ("Le:Be:weßen"))))
        (plural   ((schrift (der Lebewesen)) (aussprache ("Le:Be:weßen"))))))
    ;;
    ( dativ     (
        (singular ((schrift (dem Lebewesen)) (aussprache ("Le:Be:weßen"))))
        (plural   ((schrift (den Lebewesen)) (aussprache ("Le:Be:weßen"))))))
    ;;
    ( akkusativ (
        (singular ((schrift (das Lebewesen)) (aussprache ("Le:Be:weßen"))))
        (plural   ((schrift (die Lebewesen)) (aussprache ("Le:Be:weßen"))))))
    ;;
    ( wortart (
        (w1 substantiv)
        (w2 sächlich)))
    ;;
    ( kontext  (Organismus))
    ( trennung ( (Le be we sen) (Le be we sen)))
    ;;
    ( untergruppe (
        Eukaryoten Archaeen Bakterien
        Pflanze Pilz Protist Tier))
    ;;
    ( definition (1 (format t "organisierte genetische Einheiten, die ~
                               zu Stoffwechsel, Fortpflanzung und ~
                               Evolution befähigt sind")))
    ( anwendung  (1 (format t "die Biologie behandelt Lebewesen")))))
;; -----------------------------------------------------------------------------
(setq Mann '(
    ( nominativ (
        ( singular ((schrift (der Mann))   (aussprache ("Mann"))))
        ( plural   ((schrift (die Männer)) (aussprache ("Männ:Er"))))))
    ;;
    ( genitiv (
        ( singular ((schrift (des Mannes)) (aussprache ("Mannhs"))))
        ( plural   ((schrift (der Männer)) (aussprache ("Männ:Er"))))))
    ;;
    ( dativ (
        ( singular ((schrift (dem Manne))   (aussprache ("Mannä"))))
        ( plural   ((schrift (den Männern)) (aussprache ("Maennern"))))))
    ;;
    ( akkusativ (
        ( singular ((schrift (den Mann))   (aussprache ("Mann"))))
        ( plural   ((schrift (die Männer)) (aussprache ("Männ:Er"))))))
    ;;
    ( wortart  (
        (w1 substantiv)
        (w2 männlich)))
    ;;
    ( kontext  (Mensch))
    ( trennung ( (Män ner)))
    ;;
    (oberrgruppe (Mensch Primat Säugetier Tierreich Spezies Lebewesen
                  Familie Verwandter Handwerker))
    (untergruppe (Spieler Seemann Soldat))
    ;;
    ( definition
        (1 (format t "erwachsener, männlicher Mensch"))
        (2 (format t "Verkürzung von Ehemann"))
        (3 (format t "Mitglied einer Mannschaft oder Besatzung (Achtung: ~
                      Hier lautet der Plural dann Leute!)"))
        (4 (format t "in Zusammensetzungen: Mitglied einer Berufs- ~
                      oder ähnlichen Gruppe (Achtung: Hier lautet ~
                      der Plural dann auf -leute!)"))
        (5 (format t "Zahlklassifikator im militärischen und seemännischen ~
                      Sprachgebrauch"))
        (6 (format t "als Interjektion: Ausruf des Erstaunens oder der ~
                      Verärgerung"))
        (7 (format t "Nebenformen im Plural Mannen: Gefolgschaft")))
    ( anwendung
        (1 (format t "er ist ein kluger Mann"))
        (2 (format t "nach ihrer Hochzeit lebten sie als Mann und Frau ~
                      bis an ihr Ende"))
        (3 (format t "darf ich vorstellen? Mein Mann"))
        (4 (format t "in dieser Situation brauchen wir jeden Mann"))
        (5 (format t "er ist unser bester Mann."))
        (6 (format t "Mann über Bord!")))))
;; -----------------------------------------------------------------------------
(setq Männer  Mann)
(setq Männern Mann)
(setq Manne   Mann)
(setq Mannes  Mann)
;; -----------------------------------------------------------------------------
(setq Maus '(
    ( nominativ (
        ( singular (( schrift (die Maus))  (aussprache ("Maus"))))
        ( plural   (( schrift (die Mäuse)) (aussprache ("Mäuße"))))))
    ;;
    ( genitiv   (
        ( singular (( schrift (der Maus))  (aussprache ("Maus"))))
        ( plural   (( schrift (der Mäuse)) (aussprache ("Mäuße"))))))
    ;;
    ( dativ     (
        ( singular (( schrift (der Maus))   (aussprache ("Maus"))))
        ( plural   (( schrift (den Mäusen)) (aussprache ("Mäuzen"))))))
    ;;
    ( akkusativ (
        ( singular (( schrift (die Maus))  (aussprache ("Maus"))))
        ( plural   (( schrift (die Mäuse)) (aussprache ("Mäuße"))))))
    ;;
    ( wortart  (
        (w1 substantiv)
        (w2 weiblich)))
    ;;
    ( kontext  (säugetier))
    ( trennung ( (Mäu se)))
    ;;
    (oberegruppe  (
        Altweltmaus Kurzschwanzmaus Langschwanzmaus Maushamster Nagetier))
    (untergruppe (
        Baummaus Birkenmaus Erdmaus Feldmaus Genmaus Haselmaus
        Hausmaus Kirchenmaus Klettermaus Nacktmaus Rennmaus
        Rötelmaus Schermaus Schneemaus Spitzmaus Springmaus
        Tanzmaus Waldmaus Wassermaus Wühlmaus Wüstenmaus Zwergmaus))
    ;;
    ( definition
        (1 (format t "kleines graues oder braunes Säugetier mit überwiegend ~
                      langem Schwanz, rattenähnlich, in der Zuchtform ~
                      auch weiß oder schwarz"))
        (2 (format t "Gerät mit Funktion zur Eingabe von Signalen zur ~
                      Bedienung von Computern")))
    ;;
    ( anwendung
        (1 (format t "Der Elefant hat Angst vor der kleinen weißen Maus"))
        (2 (format t "Die Maus muss gereinigt werden")))))
;; -----------------------------------------------------------------------------
(setq Mäuse  Maus)
(setq Mäusen Maus)
;; -----------------------------------------------------------------------------
(setq Mensch '(
    ( nominativ (
        ( singular (( schrift (der Mensch))   (aussprache ("Mennsch"))))
        ( plural   (( schrift (die Menschen)) (aussprache ("Mennschen:"))))))
    ;;
    ( genitiv   (
        ( singular (( schrift (des Menschen)) (aussprache ("Mennschen:"))))
        ( plural   (( schrift (der Menschen)) (aussprache ("Mennschen:"))))))
    ;;
    ( dativ     (
        ( singular (( schrift (dem Menschen)) (aussprache ("Mennschen::"))))
        ( plural   (( schrift (den Menschen)) (aussprache ("Mennschen:"))))))
    ;;
    ( akkusativ (
        ( singular (( schrift (den Menschen)) (aussprache ("Mennschen:"))))
        ( plural   (( schrift (die Menschen)) (aussprache ("Mennschen:"))))))
    ;;
    ( wortart (
        (w1 substantiv)
        (w2 männlich)))
    ;;
    ( kontext  (lebewesen))
    ( trennung ((Men sch) (Men schen)))
    ;;
    (oberegruppe (Primat))
    (untergruppe (
        Frau Herrenmensch Mann Kind Junge Mädchen Mitmensch
        Affenmensch Altmensch Arbeitermensch Büromensch
        Christenmensch Durchschnittsmensch Dutzendmensch Edelmensch
        Elefantenmensch Entmenschlichung Familienmensch Frühmensch
        Gefühlsmensch Gemütsmensch Genussmensch Gewohnheitsmensch
        Gottmensch Gutmensch Halbmensch Herdenmensch Herrenmensch
        Höhlenmensch Kopfmensch Kraftmensch Kulturmensch Landmensch
        Lebensmensch Machtmensch Marsmensch Maschinenmensch Mitmensch
        Minusmensch Morgenmensch Nachtmensch Naturmensch Nebenmensch
        Schlangenmensch Schneemensch Sinnenmensch Skandalmensch
        Spendermensch Stadtmensch Steinzeitmensch Tiermensch Triebmensch
        Übermensch Unmensch Untermensch Urmensch Vogelmensch Waldmensch
        Wolfsmensch Zottelmensch Zweckmensch))
    ;;
    ( definition
        (1 (format t "ein Lebewesen: Spezies, der Klasse der Säugetiere ~
                      angehörend, das sich durch folgende besondere ~
                      Eigenschaften auszeichnet: aufrechter Gang, ~
                      Sprache, Erfindertum, Vorausdenken und ~
                      Nachahmung")))
    ;;
    ( anwendung
        (1 (format t "das glaubt mir kein Mensch!"))
        (2 (format t "Der Unterschied zwischen Gorilla und Mensch ~
                      beträgt gerade mal drei Prozent ihres Erbguts")))))
;; -----------------------------------------------------------------------------
(setq Menschen Mensch)
;; -----------------------------------------------------------------------------
(setq Muskel '(
    ( nominativ (
        ( singular (( schrift (der Muskel))  (aussprache ("Mußkkel"))))
        ( plural   (( schrift (die Muskeln)) (aussprache ("Mußkkeln:"))))))
    ;;
    ( genitiv   (
        ( singular (( schrift (des Muskels)) (aussprache ("Mußkkeln:s"))))
        ( plural   (( schrift (der Muskeln)) (aussprache ("Mußkkeln"))))))
    ;;
    ( dativ     (
        ( singular (( schrift (dem Muskel))  (aussprache ("Mußkkel"))))
        ( plural   (( schrift (den Muskeln)) (aussprache ("Mußkkeln"))))))
    ;;
    ( akkusativ (
        ( singular (( schrift (den Muskel))  (aussprache ("Mußkkel"))))
        ( plural   (( schrift (die Muskeln)) (aussprache ("Mußkkeln"))))))
    ;;
    ( wortart (
        (w1 substantiv)
        (w2 weiblich)))
    ;;
    ( kontext  (Organ))
    ( trennung ((Mus kel) (Mus keln) (Mus kels) ))
    ;;
    (oberegruppe ( Organ ))
    (untergruppe (
        Abduktor Adduktor Bauchmuskel Beugemuskel Rückenmuskel
        Sägemuskel Schließmuskel Streckmuskel Wadenmuskel))
    ;;
    ( definition
        (1 (format t "Medizin: Organ, welches durch die Abfolge von ~
                      Kontraktion und Erschlaffen innere und äußere ~
                      Strukturen des Organismus bewegen kann")))
    ;;
    ( anwendung (nil))))
;; -----------------------------------------------------------------------------
;;;(setq Muskeln Muskel)
;;(setq Muskels Muskel)
;; -----------------------------------------------------------------------------
(setq Organ '(
    ( nominativ (
        ( singular (( schrift (das Organ)) (aussprache ("Or:gaarn"))))
        ( plural   (( schrift (die Organe)) (aussprache ("Or:gaarnne"))))))
    ( genitiv   (
        ( singular (( schrift (des Organs))  (aussprache ("Or:garnts"))))
        ( plural   (( schrift (der Organe))  (aussprache ("Or:gaarnne"))))))
    ( dativ     (
        ( singular (( schrift (dem Organ))   (aussprache ("Or:gaarn"))))
        ( plural   (( schrift (den Organen)) (aussprache ("Or:gaarn:en"))))))
    ( akkusativ (
        ( singular (( schrift (das Organ))  (aussprache ("Or:gaarn"))))
        ( plural   (( schrift (die Organe)) (aussprache ("Or:gaarnne"))))))
    ;;
    ( wortart (
        (w1 substantiv)
        (w2 männlich)))
    ;;
    ( kontext  (Staat))
    ( trennung ( (Or gan) (Or ga ne) (Or ga nes)))
    ;;
    ( oberegruppe (
        Technik Biologie Gewebe Zelle Sinn Empfindung
        Empfänglichkeit Tonquelle Akustik Musikinstrument
        Presse Kommunikation Kultur Staat))
    ;;
    ( untergruppe ( Organe Organfunktion Parteiorgan Kontrollorgan))
    ( definition
        (1 (format t "ein Glied, ein Teil in einem größeren (meist ~
                      technischen oder biologischen) Zusammenhang ~
                      mit einer bestimmten Gestalt und Funktion"))
        (2 (format t "ein Körperteil, das eine spezielle Funktion ~
                      hat, wie Herz, Leber, Lunge, Augen"))
        (3 (format t "Sinn, Empfindung, Empfänglichkeit"))
        (4 (format t "Stimme"))
        (5 (format t "Musik: Orgel"))
        (6 (format t "eine Zeitung oder Zeitschrift einer Partei, ~
                      eines Vereins oder einer anderen Körperschaft"))
        (7 (format t "ein Teil des Staatsapparates (Amt, Behörde) ~
                      in realsozialistischen Staaten"))
        (8 (format t "eine in einer bestimmten Angelegenheit, mit ~
                      einem bestimmten Aufgabenbereich beauftragte, ~
                      bestellte Behörde, Stelle, Person, beauftragtes ~
                      Gremium")))
    ;;
    ( anwendung
        (1 (format t "Das Organ ist ausgefallen"))
        (2 (format t "Die Haut ist ein Organ des Körpers"))
        (3 (format t "Du hast wohl dafür kein Organ"))
        (4 (format t "Sein Organ übertönte alle anderen"))
        (5 (format t "Das Organ muss neu gestimmt werden"))
        (6 (format t "Das Organ bringt immer nur die Meinung der Partei"))
        (7 (format t "Wie eine Maschinerie begannen die Organe zu arbeiten"))
        (8 (format t "Die Mitgliederversammlung ist das höchste Organ ~
                      des Vereins")))))
;; -----------------------------------------------------------------------------
(setq Organe Organ)
(setq Organs Organ)
;; -----------------------------------------------------------------------------
(setq Organismus '((
    ( nominativ (
        ( singular (( schrift (der Organismus)) (aussprache ("Or:gaarn"))))
        ( plural   (( schrift (die Organismen)) (aussprache ("Or:gaarnne"))))))
    ;;
    ( genitiv   (
        ( singular (( schrift (des Organismus)) (aussprache ("Or:gaarn"))))
        ( plural   (( schrift (der Organismen)) (aussprache ("Or:gaarnne"))))))
    ;;
    ( dativ     (
        ( singular (( schrift (dem Organismus)) (aussprache ("Or:gaarn"))))
        ( plural   (( schrift (den Organismen)) (aussprache ("Or:gaarnne"))))))
    ;;
    ( akkusativ (
        ( singular (( schrift (den Organismus)) (aussprache ("Or:gaarn"))))
        ( plural   (( schrift (die Organismen)) (aussprache ("Or:gaarnne"))))))
    ;;
    ( wortart (
        (w1 substantiv)
        (w2 männlich)))
    ;;
    ( kontext  (lebewesen))
    ( trennung ( (Or ga nis mus) (Or ga nis men) ))
    ;;
    ( oberegruppe (nil))
    ( untergruppe (nil))
    ;;
    ( definition
        (1 (format t "Biologie und Medizin: ein individuelles Lebewesen"))
        (2 (format t "Sozialwissenschaften: ein Gemeinwesen oder ein ~
                      Sozialkörper")))
    ;;
    ( anwendug (nil)))))
;; -----------------------------------------------------------------------------
(print *Bakterium*)

;; [[dUNkel:]]
;; [[gAnzTt]]
;; [[ta:1g]]
;; [[ma:1m:ma]]
;; [[@e:a:l]] [Bier:]
;; [telle:f:on] [Or:gel] [Fö:gel]

