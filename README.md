
# Gesellschaftsmonitoring COVID19, Daten SwissIX

## Grundlage
Täglich aktualisierte Daten zum Internetverkehr, welcher über [SwissIX](https://www.swissix.ch/), dem grössten Internet-Exchange-Dienst in der Schweiz geht. SwissIX stellt die Infrastruktur für den Austausch von Datenpaketen zwischen den Netzen der einzelnen Internet-Provider bereit.

## Methodisches
Das R-Skript `prepareData.R` dient zum Generieren der erforderlichen Datenstruktur und des Datenfiles `Social_SWISSIX.csv.`
Das Datenfile wird in der Regel täglich automatisch aktualisiert. Der letzte im Datenfilen enthaltene Tag liegt 1 bis 2 Tage hinter dem aktuellen Datum zurück.

## Weitere Hinweise zur Variable
Die täglich aktualisierten Daten von Swiss IX zeigen, dass der Internetverkehr bereits eine Woche vor dem Lockdown vom Montag, 16. März, sprunghaft und nachhaltig angestiegen ist. «Damals hat ein grosser Streaming-Anbieter einen Teil seines Verkehrs über unsere Infrastruktur umgeleitet», erklärt Christian Wittenhorst, Swiss-IX-Chef. 

Der tägliche Spitzen-Verkehr am Abend sei deshalb zwischenzeitlich wegen Videostreaming und Gaming merklich erhöht gewesen, habe sich inzwischen aber wieder bei den Vor-Corona-Werten eingependelt. Dies dürfte die Folge der Reduktion der Streaming-Bandbreiten von Netflix und anderen sein, schätzt der Swiss-IX-Chef. 
[Weiterführende Informationen](https://www.tagesanzeiger.ch/was-der-datenverkehr-ueber-unser-verhalten-verraet-436727633329)

## Weitere Informationen
[Projektseite](https://github.com/statistikZH/covid19monitoring)

[Datenbezug](https://www.web.statistik.zh.ch/covid19_indikatoren_uebersicht/#/)

[Nutzungsbedingungen](https://github.com/openZH/covid_19/blob/master/LICENSE)
