# Extraction de données de Wikidata

* Wikidata est une base de données sémantique et collaborative. Elle contient des informations
* SPARQL est un langage de requête qui permet d'extraire des données de Wikidata et de constituer à la volée des jeux de données
* Comme sur Wikipédia, les données peuvent être incomplètes ou erronées et peuvent être corrigées directement sur [Wikidata.org](https://www.wikidata.org/wiki/Wikidata:Main_Page)

## Jeu de données sur les communes béninoises

* On repère les communes béninoises grâce à la propriété [p31](https://www.wikidata.org/wiki/Property:P31) (nature de l'élément) qui est égal à la valeur [Q1780506](https://www.wikidata.org/wiki/Q1780506) (commune béninoise)
* On récupère ensuite :
  * l'entité administrative dans laquelle se situe l'élément : [P131](https://www.wikidata.org/wiki/Property:P131) ;  
  * le pays : [P17](https://www.wikidata.org/wiki/Property:P17) ;
  * les coordonnées géographiques : [P625](https://www.wikidata.org/wiki/Property:P625)
  * l'identifiant dans OpenStreetMap : [P402](https://www.wikidata.org/wiki/Property:P402)
  * la date de création de la commune : [P571](https://www.wikidata.org/wiki/Property:P571)
  * le nom officiel : [P1448](https://www.wikidata.org/wiki/Property:P1448)
  * la superficie : [P2046](https://www.wikidata.org/wiki/Property:P2046)
  * le nombre d'habitants : [P1082](https://www.wikidata.org/wiki/Property:P1082)

* [Requête SPARQL sur les communes béninoises](https://query.wikidata.org/#PREFIX%20wd%3A%20%3Chttp%3A%2F%2Fwww.wikidata.org%2Fentity%2F%3E%0APREFIX%20wdt%3A%20%3Chttp%3A%2F%2Fwww.wikidata.org%2Fprop%2Fdirect%2F%3E%0APREFIX%20wikibase%3A%20%3Chttp%3A%2F%2Fwikiba.se%2Fontology%23%3E%0APREFIX%20p%3A%20%3Chttp%3A%2F%2Fwww.wikidata.org%2Fprop%2F%3E%0APREFIX%20v%3A%20%3Chttp%3A%2F%2Fwww.wikidata.org%2Fprop%2Fstatement%2F%3E%0APREFIX%20q%3A%20%3Chttp%3A%2F%2Fwww.wikidata.org%2Fprop%2Fqualifier%2F%3E%0APREFIX%20rdfs%3A%20%3Chttp%3A%2F%2Fwww.w3.org%2F2000%2F01%2Frdf-schema%23%3E%0A%0ASELECT%20%3Fcommune_id%20%3Fcommune_frlabel%20%3Fadministrative_area_id%20%3Fadministrative_area_frlabel%20%3Fcountry_id%20%3Fcountry_frlabel%20%3Fcoord%20%3Flien_osm%20%3Fdate_creation%20%3Fnom_officiel%20%3Fsuperficie%20%3Fpopulation%0AWHERE%0A{%0A%20%20%20%3Fcommune_id%20wdt%3AP31%20wd%3AQ1780506%20.%20%20%20%20%23%20find%20items%20that%20have%20%22instance%20of%20%28P31%29%3A%20commune%20of%20Benin%20%28Q1780506%29%22%0A%20%20%20OPTIONAL%20{%3Fcommune_id%20rdfs%3Alabel%20%3Fcommune_frlabel%20%20filter%20%28lang%28%3Fcommune_frlabel%20%29%20%3D%20%22fr%22%29%20.}%0A%20%20%20OPTIONAL%20{%3Fcommune_id%20wdt%3AP131%20%3Fadministrative_area_id%20.}%0A%20%20%20OPTIONAL%20{%3Fadministrative_area_id%20rdfs%3Alabel%20%3Fadministrative_area_frlabel%20%20filter%20%28lang%28%3Fadministrative_area_frlabel%20%29%20%3D%20%22fr%22%29%20.}%0A%20%20%20OPTIONAL%20{%3Fcommune_id%20wdt%3AP17%20%3Fcountry_id%20.}%0A%20%20%20OPTIONAL%20{%3Fcountry_id%20rdfs%3Alabel%20%3Fcountry_frlabel%20%20filter%20%28lang%28%3Fcountry_frlabel%20%29%20%3D%20%22fr%22%29%20.}%20%20%0A%20%20%20OPTIONAL%20{%3Fcommune_id%20wdt%3AP625%20%3Fcoord}%0A%20%20%20OPTIONAL%20{%3Fcommune_id%20wdt%3AP402%20%3Flien_osm}%0A%20%20%20OPTIONAL%20{%3Fcommune_id%20wdt%3AP571%20%3Fdate_creation}%0A%20%20%20OPTIONAL%20{%3Fcommune_id%20wdt%3AP1448%20%3Fnom_officiel}%0A%20%20%20OPTIONAL%20{%3Fcommune_id%20wdt%3AP2046%20%3Fsuperficie}%0A%20%20%20OPTIONAL%20{%3Fcommune_id%20wdt%3AP1082%20%3Fpopulation}%0A}%0A)
* Le fichier [sparql_communes_benin.sh](sparql_communes_benin.sh) permet de générer le csv
* Le résultat se trouve dans le fichier [wikidata_communes_benin.csv](wikidata_communes_benin.csv)
