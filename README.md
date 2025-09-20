# Jugger Regelwerk

## Inhalt & Struktur des Regelwerk-Repos

Das Regelwerk wird von uns als [Typst](https://typst.app/) Projekt bearbeitet. Die Inhalte sind entlang der Kapitelgrenzen in einzelne Dateien unterteilt und werden in der Hauptdatei (`regelwerk.typ`) importiert.

Im Repository werden verschiedene Versionen über eigene Branches abgebildet.

Im `main` branch befindet sich die aktuell gültige Version des Regelwerkes.

Die Branches, deren Name mit `entwurf/` beginnt, enthalten verschiedene Entwürfe zu verschiedenen Regelideen. Typischerweise haben diese Branches eine Namensstruktur wie folgt:

`entwurf/<thema>/<variante>`

Dabei bezeichnet `<thema>` eines der Themen/Regelideen, die im Forum diskutiert werden und `<variante>` eine konkrete Variante (einen Entwurf), den wir entwickelt haben.

Bekannte Probleme, Fehler & Todos werden von uns als GitHub Issues getracked.

## Zur Regelarbeit beitragen

Ihr könnt auf mehrere Wege zur Regelwerksarbeit beitragen:

- Neue Themen, Ideen oder Anregungen beitragen
- An Diskussionen zu bestehenden Themen teilnehmen
- Probleme, Fehler & Co. an uns melden
- Korrekturen & Anpassungsvorschläge einreichen

Die ersten beiden Möglichkeiten finden hauptsächlich im Forum statt. Für die letzten beiden Optionen seid ihr auf GitHub richtig aufgehoben.

Wenn ihr also Probleme (z.B. Fehler in Rechtschreibung, Grammatik oder Zeichensetzung, Formatierungsprobleme, etc.) mit dem Regelwerk findet, könnt ihr uns diese [hier](https://github.com/JuggerGermany/Regelwerk/issues) melden. Für größere Themen, insb. solche zu denen es Diskussionen gibt oder geben könnte, solltet ihr stattdessen einen Post im Forum unter [Regelideen](https://forum.jugger.org/viewforum.php?f=266) anlegen.

In jedem Fall freuen wir uns über euren Input. Solltet ihr euch nicht sicher sein, wo ihr uns am besten schreibt, fragt uns gerne oder wählt den Weg, der euch persönlich am besten passt. Hauptsache es kommt bei uns an, wir platzieren es dann da, wo es für uns am besten zu Bearbeiten ist.

Wenn ihr direkt mit Textänderungen o.ä. beitragen wollt, könnt ihr das mithilfe von Pull-Requests tun. Dazu mehr im folgenden Abschnitt.
Konkrete Textvorschläge sind natürlich auch im Forum oder in GitHub Issues gerne gesehen, solltet ihr sie nicht direkt in GitHub einreichen wollen.

## Selbst das Regelwerk bearbeiten

Um das Regelwerk selber zu bearbeiten, müsst ihr euch in eurem eigenen Account einen [Fork](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo) des Repos anlegen und eure Änderungen dort einpflegen. Diese Änderungen könnt ihr dann mithilfe eines [Pull-Requests](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request) zurück in das Regelwerks-Repo schicken, wo wir sie übernehmen können.

Für die direkte Arbeit mit dem Regelwerk braucht ihr ein Grundverständnis von git, um mit Github zu interagieren. Ein Grundverständnis von Typst ist notwendig, um Änderungen an Formatierung und Layout des Regelwerks vorzunehmen. Für reine Textänderungen werden keine Typst-Kenntnisse gebraucht.

Wir selbst arbeiten mit dem Text-Editor VSCode, um am Regelwerk zu arbeiten. Weiter unten findet ihr eine kurze Beschreibung unseres Setups. Es reicht aber auch jeder andere Text-Editor aus.

Alle tools die wir nutzen sind weit verbreitet und gut dokumentiert, sodass googlen oft ausreichend ist, um ein Verständnis zu bekommen. Die Erklärungen unten sind als Minimal-Basics zu verstehen. 

### git

Ein gutes Tutorial für git findet ihr [hier](https://www.atlassian.com/git/tutorials) (vor allem unter “Getting Started”).

Hier eine Übersicht über einige nützliche git Befehle, die ihr kennen solltet:

- in Github: `fork` (private kopie des Repos erstellen)
- auf dem eigenen Computer:
    - `git clone` (repo lokal speichern)
    - `git pull` (lokales repo mit dem remote-counterpart aktualisieren)
    - `git branch`, `git switch`, `git checkout` (neuen Branch für neue Themen erstellen)
    - `git add`, `git commit` (lokale Änderungen mit git tracken)
    - `git push` (lokale Änderungen ins remote repo packen)
    - `git diff` (zeigt Unterschiede zwischen commits/branches an)
- in Github: Pull request erstellen (Anfrage die Änderungen in einen anderen Branch zu übernehmen)

## GitHub 

GitHub ist eine Möglichkeit, ein Projekt in einer Cloud zu speichern, zu teilen und zusammenzuarbeiten. Wenn ihr dieses Readme lest, seid ihr schon auf GitHub unterwegs. 

Eine kurze Einführung zu Github gibt es [hier](https://docs.github.com/de/get-started/start-your-journey/hello-world).

## Beispiel

1. Wenn ihr eine fork des Repos habt und bspw einen Typo in der Datei `pompfen/kette.typ` fixen möchtet, müsst ihr zunächst das repo clonen, um es lokal auf dem Rechner zu haben (wenn ihr diesen Schritt schonmal gemacht habt, könnt ihr direkt zu Schritt 3 springen, wenn ihr in dem Regelwerk-Ordner auf eurem Rechner seid).

`git clone https://github.com/hgloeckner/Regelwerk.git`

`cd Regelwerk`

2. Setzt das Hauptrepository als upstream 

`git remote add upstream https://github.com/JuggerGermany/Regelwerk.git`

1. aktualisiert das lokale repo mit der aktuellen Version auf Github

`git switch main`

`git pull upstream main`

1. erzeugt einen neuen branch für euren typo fix

`git switch -c typo_fix_kette`

1. Ändert eure `typst/pompfen/kette.typ`
2. Fügt die Änderungen, die ihr gemacht habt, zu eurem lokalen Repository hinzu. und beschreibt sie mit einer sprechenden Commit-message.

`git add pompon/kette.typ`

`git commit -m "typo fix in kette.typ"`

1. push der Änderungen in eure fork bei GitHub (bis hier ist sie nur auf eurem Computer!)

`git push origin typo_fix_kette`

1. In GitHub könnt ihr jetzt einen Pull Request von eurem branch `typo_fix_kette` auf das Hauptrepository erstellen 

Natürlich müsst ihr oben den Link zu eurer persönlichen Fork ersetzen und könnt den Branch auch anders nennen oder die Commit message ändern. 

Es gibt für git auch viele visuelle Clients, die die Details der commands hinter modernen Oberflächen verstecken. 

### Typst

Typst ist eine moderne typesetting Sprache, mit der Text und Formatierung für z.B. PDFs als einfache Textdateien abgelegt und verarbeitet werden können (wer schonmal von LaTeX gehört hat kann sich Typst als den modernen Nachfolger vorstellen).

Das bedeutet vor allem, dass die reinen Textinhalte des Regelwerks als normaler Text vorliegen und bearbeitet werden können. Solltet ihr also nur Textänderungen vornehmen wollen, müsst ihr euch mit den weiteren Details und Features von Typst nicht auseinandersetzen.

Für Formatierung u.ä. sind nähere Kenntnisse von Typst notwendig. Ein guter Einstieg ist das [Typst Tutorial](https://typst.app/docs/tutorial/).

### VSCode

VSCode ist ein umfangreicher Text-Editor mit sehr vielen Features und optionalen Sounds Erweiterungen (Extensions).

Folgende Erweiterungen sind nützlich, um mit dem Regelwerk zu arbeiten:

- ❗ [Tinymist Typst](https://marketplace.visualstudio.com/items/?itemName=myriad-dreamin.tinymist) → notwendig, um das Regelwerk als PDF zu erzeugen; erlaubt auch live Änderungen im PDF anzuzeigen
- [vsccode-pdf](https://marketplace.visualstudio.com/items/?itemName=tomoki1207.pdf) → erlaubt PDFs direkt in VSCode anzuzeigen; vor allem dann notwendig, wenn das live-Änderungens-Feature von Tinymist genutzt wird
- [Error Lens](https://marketplace.visualstudio.com/items/?itemName=usernamehw.errorlens) → zeigt Fehlermeldungen direkt im Text an
- [Git Graph](https://marketplace.visualstudio.com/items/?itemName=mhutchie.git-graph) → visuelle Anzeige für git Branches