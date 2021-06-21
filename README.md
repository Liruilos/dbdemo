# dbdemo
 DB Change Management Demo
 
 
 - Plain SQL
 
 Changelog Dateien j & k sind Beispiele für was man mit Plain SQL machen kann. Hier sollte man aber vorsichtig sein, da man für ein Rollback von Plain SQL (oder Datenänderungen) explizit ein definiertes Rollback Tag braucht.
 - Rollbacks
 
 Changesets l & m sind Beispiele für Rollbacks via Liquibase. Changelog Datei I nutzt keinen Rollback tag um zu sehen wie Liquibase das selber macht und im Changelog Datei M definieren wir selbst die Rollback Funktion mit dem <rollback> Tag.
 
# Mitmachen
Schritt 1: PostgresSQL installieren

Als erstes die aktuellste Version von PostgresSQL installieren. 
Folgen Sie die Anleitung und wenn das Installer nach einem Passwort fragt einfach 'secret' eingeben.

PostgresSQL Downloads Seite: https://www.enterprisedb.com/downloads/postgres-postgresql-downloads

Install-Anleitung: https://www.postgresqltutorial.com/install-postgresql/

Schritt 2: Liquibase Demo Repo clonen

Clonen Sie als nächste die Repo, die du gerade anschaust :P
In dem Video erkären wir einige Beispiel Changesets aus dem Branch 'liquibase-example-main', aber die andere Branches können Sie auch gerne anschauen.
Die Repo nutzt gradle, das heißt Sie können mit beliebigem IDE das Gradle Projekt importieren und nach dem Import stehen alle benutze Bibliotheken zur Verfügung.

Schritt 3: Profit
Jetzt können Sie unseren Video anschauen und auch mitmachen.
Link zum Video auf Youtube: https://youtu.be/fCUSCmeZas8