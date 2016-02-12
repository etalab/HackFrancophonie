curl -G https://query.wikidata.org/bigdata/namespace/wdq/sparql --data-urlencode query='PREFIX wd: <http://www.wikidata.org/entity/>
	PREFIX wdt: <http://www.wikidata.org/prop/direct/>
	PREFIX wikibase: <http://wikiba.se/ontology#>
  PREFIX p: <http://www.wikidata.org/prop/>
  PREFIX v: <http://www.wikidata.org/prop/statement/>
  PREFIX q: <http://www.wikidata.org/prop/qualifier/>
  PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

	SELECT ?commune_id ?commune_frlabel ?administrative_area_id ?administrative_area_frlabel ?country_id ?country_frlabel ?coord ?lien_osm ?date_creation ?nom_officiel ?superficie ?population

	WHERE
    {
    ?commune_id wdt:P31 wd:Q1780506 .    # find items that have "instance of  (P31): commune of Benin (Q1780506)"
    OPTIONAL {?commune_id rdfs:label ?commune_frlabel  filter (lang(?commune_frlabel ) = "fr") .}
    OPTIONAL {?commune_id wdt:P131 ?administrative_area_id .}
    OPTIONAL {?administrative_area_id rdfs:label ?administrative_area_frlabel  filter (lang(?administrative_area_frlabel ) = "fr") .}
    OPTIONAL {?commune_id wdt:P17 ?country_id .}
    OPTIONAL {?country_id rdfs:label ?country_frlabel  filter (lang(?country_frlabel ) = "fr") .}
    OPTIONAL {?commune_id wdt:P625 ?coord}
    OPTIONAL {?commune_id wdt:P402 ?lien_osm}
    OPTIONAL {?commune_id wdt:P571 ?date_creation}
    OPTIONAL {?commune_id wdt:P1448 ?nom_officiel}
    OPTIONAL {?commune_id wdt:P2046 ?superficie}
    OPTIONAL {?commune_id wdt:P1082 ?population}
    }' -H 'Accept: text/csv' > wikidata_communes_benin.csv
