# dbdemo
 DB Change Management Demo

# Dokumentation

## Datenmanipulation
### INSERT
Mit dem &lt;insert&gt;-Tag lassen sich Daten in die Datenbank einfügen. Dabei sollte man darauf achten, dass es vorher passende pre-conditions gibt.  
Beispiel:

    <insert tableName="artwork">
      <column name="name" value="'Die Taube'" />       //Einfügen von Werten in eine Spalte
      <column name="sold" valueBoolean="true" />       //Einfügen von Boolean-Werten in eine Spalte
      <column name="date" valueDate="2021-05-12" />    //Einfügen von Datums-Werten in eine Spalte
      <column name="weight" valueNumeric="12.5" />     //Einfügen von Kommazahl-Werten in eine Spalte
    </insert>
    
Weitere Informationen: https://docs.liquibase.com/change-types/community/insert.html

### UPDATE
Durch den &lt;update&gt;-Tag lassen sich Manipulationen an den Daten vornehmen. Auch hier ist auf pre-conditions zu achten.  
Beispiel:

    <update tableName="artwork">
      <column name="price" value="120000" />                 //Ändern des Werts in der Spalte price
      <where>name='Die Beständigkeit der Erinnerung'</where> //WHERE-condition
    </insert>

Weitere Informationen: https://docs.liquibase.com/change-types/community/update.html

### DELETE
Mit dem &lt;delete&gt;-Tag kann man Daten aus der Datenbank löschen.  
Beispiel:

    <delete tableName="artist">            //Daten aus der Tabelle artist löschen
        <where>dob &lt; :value</where>     //WHERE-condition
        <whereParams>
            <param value="1900-01-01"/>    //Parameter :value in der WHERE-condition
        </whereParams>
    </delete>

Weitere Informationen: https://docs.liquibase.com/change-types/community/delete.html

## Tabelle databasechangeloglock
Diese Tabelle stellt sicher, dass nicht mehrere Änderungen gleichzeitig an der Datenbank gemacht werden können. Sobald changesets ausgeführt werden, wird in Eintrag in die Tabelle geschrieben, der anzeigt, dass die Datenbank gerade gesperrt ist. Ist die Ausführung fertig wird der Eintrag wieder gelöscht.

Weitere Informationen: https://docs.liquibase.com/concepts/basic/databasechangeloglock-table.html?Highlight=databasechangelog

## Tabelle databasechangelog
In dieser Tabelle befinden sich Informationen über jedes ausgeführte Changeset.  
Dazu gehören:  
* Id, Autor, Filename: Bilden den primary key
* Datum und Reihenfolge der Ausführung
* Ergebnis der Ausführung: Erfolgreich, Fehlgeschlagen, Übersprungen
* MD5-Summe: Wird für jedes Changeset bei der Ausfürhung berechnet. Wird ein Changeset also nachträglich geändert kommt ein Fehler. Änderungen können dann entweder in einem direkt darauf folgenden Changeset rückgängig gemacht werden, oder wenn das Changeset fehlerhaft ist und korrigiert werden muss, kann mit dem &lt;validCheckSum&gt;-Tag die neue MD5-Summe als korrekt eingetragen werden.
* Zusatz-Informationen: Beschreibung, Kommentare, Versionen, ...

Weitere Informationen: https://docs.liquibase.com/concepts/basic/databasechangelog-table.html?Highlight=databasechangelog

# Quellen
https://docs.liquibase.com/home.html
