# ArchiefMT
Archief api voor de MT site. 

# Database

bevat de volgende tabellen:

- projects
- courses
- people
- media

projects is de hoofdtabel. 

# Functies (todo)

- De mogelijkheid om een lijst met projecten te krijgen in html-vorm.
- formulier voor invoer
	- Courses
	- Projects
	- Mensen (voor nieuwe onderzoekers en zo)

# Fixen: 

- mysql omzetten naar PDO of mysqli, mysql is deprecated in 5.5.0
	- er kan ook een assoc fetch met PDO volgens mij. 
- partials maken voor de project view
	- kan dit in standaard php? gewoon met requires? 
	- by extension alle html uit javascript halen
- op zoek naar een gratis masonry met zoek functionaliteit, lijkt dat Masonry.js dat wel kan, maar zie nog niet echt waar. Izotope kost geld. 
- harde paden

**partials**

- projectpagina 
	- per entry informatie over project/opdracht
- hoofdpagina
	- masonry,filters,fotos van projecten obv filters
- alternatieve hoofdpagina view voor op MT site (via de web api)
- formulier (automatisch gegenereerd)

** todo **
- links voor studenten en voor vakken (als het niet te hosten is op het archief)
- filters
- verplichte velden: title, abstract, author name(s), year, course, supervisor1, other supervisor, picture, extra media, link naar project (evt)

 




