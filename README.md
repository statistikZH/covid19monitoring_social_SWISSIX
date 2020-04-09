# covid19monitoring_social_SWISSIX

## Grundlage
Täglich aktualisierte Daten zum Internetverkehr, welcher über [SwissIX](https://www.swissix.ch/), dem grössten Internet-Exchange-Dienst in der Schweiz geht. SwissIX stellt die Infrastruktur für den Austausch von Datenpaketen zwischen den Netzen der einzelnen Internet-Provider bereit.

## Methodisches
Das R-Skript `Social_SWISSIX.R` dient zum Generieren der erforderlichen Datenstruktur und des Datenfiles `Social_SWISSIX.csv.`
Das Datenfile wird in der Regel täglich automatisch aktualisiert. Der letzte im Datenfilen enthaltene Tag liegt 1 bis 2 Tage hinter dem aktuellen Datum zurück.

## Weitere Hinweise zur Variable
Die täglich aktualisierten Daten von Swiss IX zeigen, dass der Internetverkehr bereits eine Woche vor dem Lockdown vom Montag, 16. März, sprunghaft und nachhaltig angestiegen ist. Christian Wittenhorst, Swiss-IX-Chef, dazu: "Ein grosser Inhalteanbieter hat einen Teil seines Verkehrs umgeleitet. SwissIX wird oft auch als "Versicherung" bzw. als Überlaufgefäss genutzt. SwissIX bietet sofort verfügbare Kapazitäten. Sobald der eigene Aufbau dann abgeschlossen ist, werden wieder vermehrt direkte Übergänge (ohne SwissIX) genutzt.

Ab dem 29.3. ist dies zu beobachten. Ausserdem sieht man dann den Effekt der Reduktion der Auflösung bei den Streaming-Anbietern. An Tagen mit schönem Wetter ist am Abend ohnehin weniger Verkehr, wohl auch unter "Social Distancing".

Meine Vermutung: Der starke Sprung am 9.3. widerspiegelt vor allem die Erwartung der Inhaltsanbieter auf einen starken Verkehranstieg. Der Verkehr wurde umverteilt um ausreichend Reserven an möglichst vielen Orten vorhalten zu können."

[Weiterführende Erklärungen zur Entwicklung des Datenvolumens](https://www.tagesanzeiger.ch/was-der-datenverkehr-ueber-unser-verhalten-verraet-436727633329)

## Weitere Informationen
[Projektseite: "Gesellschafsmonitoring COVID19"](https://github.com/statistikZH/covid19monitoring) <br>
[Datenbezug](https://www.web.statistik.zh.ch/covid19_indikatoren_uebersicht/#/) <br>
[Visualisierung](https://www.web.statistik.zh.ch/cms_vis/covid19_indikatoren/) <br>
