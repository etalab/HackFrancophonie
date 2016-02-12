
curl -G https://query.wikidata.org/bigdata/namespace/wdq/sparql --data-urlencode query='PREFIX wd: <http://www.wikidata.org/entity/>
PREFIX wdt: <http://www.wikidata.org/prop/direct/>
PREFIX wikibase: <http://wikiba.se/ontology#>
PREFIX p: <http://www.wikidata.org/prop/>
PREFIX v: <http://www.wikidata.org/prop/statement/>
PREFIX q: <http://www.wikidata.org/prop/qualifier/>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

SELECT ?nature_id ?nature_frlabel (COUNT(distinct ?id) as ?count)
WHERE
{
   ?id wdt:P17 wd:Q962 .
   OPTIONAL {
     ?id wdt:P31 ?nature_id .
     ?nature_id rdfs:label ?nature_frlabel  filter (lang(?nature_frlabel ) = "fr") .
   }
}
GROUP BY ?nature_id ?nature_frlabel
ORDER BY DESC(?count)' -H 'Accept: text/csv' > wikidata_benin_count_p31.csv

curl -G https://query.wikidata.org/bigdata/namespace/wdq/sparql --data-urlencode query='PREFIX wd: <http://www.wikidata.org/entity/>
PREFIX wdt: <http://www.wikidata.org/prop/direct/>
PREFIX wikibase: <http://wikiba.se/ontology#>
PREFIX p: <http://www.wikidata.org/prop/>
PREFIX v: <http://www.wikidata.org/prop/statement/>
PREFIX q: <http://www.wikidata.org/prop/qualifier/>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

SELECT ?nature_id ?nature_frlabel (COUNT(distinct ?id) as ?count)
WHERE
{
   ?id wdt:P17 wd:Q965 .
   OPTIONAL {
     ?id wdt:P31 ?nature_id .
     ?nature_id rdfs:label ?nature_frlabel  filter (lang(?nature_frlabel ) = "fr") .
   }
}
GROUP BY ?nature_id ?nature_frlabel
ORDER BY DESC(?count)' -H 'Accept: text/csv' > wikidata_burkinafaso_count_p31.csv

curl -G https://query.wikidata.org/bigdata/namespace/wdq/sparql --data-urlencode query='PREFIX wd: <http://www.wikidata.org/entity/>
PREFIX wdt: <http://www.wikidata.org/prop/direct/>
PREFIX wikibase: <http://wikiba.se/ontology#>
PREFIX p: <http://www.wikidata.org/prop/>
PREFIX v: <http://www.wikidata.org/prop/statement/>
PREFIX q: <http://www.wikidata.org/prop/qualifier/>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

SELECT ?nature_id ?nature_frlabel (COUNT(distinct ?id) as ?count)
WHERE
{
   ?id wdt:P17 wd:Q1008 .
   OPTIONAL {
     ?id wdt:P31 ?nature_id .
     ?nature_id rdfs:label ?nature_frlabel  filter (lang(?nature_frlabel ) = "fr") .
   }
}
GROUP BY ?nature_id ?nature_frlabel
ORDER BY DESC(?count)' -H 'Accept: text/csv' > wikidata_cote_d_ivoire_count_p31.csv

curl -G https://query.wikidata.org/bigdata/namespace/wdq/sparql --data-urlencode query='PREFIX wd: <http://www.wikidata.org/entity/>
PREFIX wdt: <http://www.wikidata.org/prop/direct/>
PREFIX wikibase: <http://wikiba.se/ontology#>
PREFIX p: <http://www.wikidata.org/prop/>
PREFIX v: <http://www.wikidata.org/prop/statement/>
PREFIX q: <http://www.wikidata.org/prop/qualifier/>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

SELECT ?nature_id ?nature_frlabel (COUNT(distinct ?id) as ?count)
WHERE
{
   ?id wdt:P17 wd:Q790 .
   OPTIONAL {
     ?id wdt:P31 ?nature_id .
     ?nature_id rdfs:label ?nature_frlabel  filter (lang(?nature_frlabel ) = "fr") .
   }
}
GROUP BY ?nature_id ?nature_frlabel
ORDER BY DESC(?count)' -H 'Accept: text/csv' > wikidata_haiti_count_p31.csv

curl -G https://query.wikidata.org/bigdata/namespace/wdq/sparql --data-urlencode query='PREFIX wd: <http://www.wikidata.org/entity/>
PREFIX wdt: <http://www.wikidata.org/prop/direct/>
PREFIX wikibase: <http://wikiba.se/ontology#>
PREFIX p: <http://www.wikidata.org/prop/>
PREFIX v: <http://www.wikidata.org/prop/statement/>
PREFIX q: <http://www.wikidata.org/prop/qualifier/>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

SELECT ?nature_id ?nature_frlabel (COUNT(distinct ?id) as ?count)
WHERE
{
   ?id wdt:P17 wd:Q1027 .
   OPTIONAL {
     ?id wdt:P31 ?nature_id .
     ?nature_id rdfs:label ?nature_frlabel  filter (lang(?nature_frlabel ) = "fr") .
   }
}
GROUP BY ?nature_id ?nature_frlabel
ORDER BY DESC(?count)' -H 'Accept: text/csv' > wikidata_maurice_count_p31.csv

curl -G https://query.wikidata.org/bigdata/namespace/wdq/sparql --data-urlencode query='PREFIX wd: <http://www.wikidata.org/entity/>
PREFIX wdt: <http://www.wikidata.org/prop/direct/>
PREFIX wikibase: <http://wikiba.se/ontology#>
PREFIX p: <http://www.wikidata.org/prop/>
PREFIX v: <http://www.wikidata.org/prop/statement/>
PREFIX q: <http://www.wikidata.org/prop/qualifier/>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

SELECT ?nature_id ?nature_frlabel (COUNT(distinct ?id) as ?count)
WHERE
{
   ?id wdt:P17 wd:Q912 .
   OPTIONAL {
     ?id wdt:P31 ?nature_id .
     ?nature_id rdfs:label ?nature_frlabel  filter (lang(?nature_frlabel ) = "fr") .
   }
}
GROUP BY ?nature_id ?nature_frlabel
ORDER BY DESC(?count)' -H 'Accept: text/csv' > wikidata_mali_count_p31.csv

curl -G https://query.wikidata.org/bigdata/namespace/wdq/sparql --data-urlencode query='PREFIX wd: <http://www.wikidata.org/entity/>
PREFIX wdt: <http://www.wikidata.org/prop/direct/>
PREFIX wikibase: <http://wikiba.se/ontology#>
PREFIX p: <http://www.wikidata.org/prop/>
PREFIX v: <http://www.wikidata.org/prop/statement/>
PREFIX q: <http://www.wikidata.org/prop/qualifier/>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

SELECT ?nature_id ?nature_frlabel (COUNT(distinct ?id) as ?count)
WHERE
{
   ?id wdt:P17 wd:Q1041 .
   OPTIONAL {
     ?id wdt:P31 ?nature_id .
     ?nature_id rdfs:label ?nature_frlabel  filter (lang(?nature_frlabel ) = "fr") .
   }
}
GROUP BY ?nature_id ?nature_frlabel
ORDER BY DESC(?count)' -H 'Accept: text/csv' > wikidata_senegal_count_p31.csv

curl -G https://query.wikidata.org/bigdata/namespace/wdq/sparql --data-urlencode query='PREFIX wd: <http://www.wikidata.org/entity/>
PREFIX wdt: <http://www.wikidata.org/prop/direct/>
PREFIX wikibase: <http://wikiba.se/ontology#>
PREFIX p: <http://www.wikidata.org/prop/>
PREFIX v: <http://www.wikidata.org/prop/statement/>
PREFIX q: <http://www.wikidata.org/prop/qualifier/>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

SELECT ?nature_id ?nature_frlabel (COUNT(distinct ?id) as ?count)
WHERE
{
   ?id wdt:P17 wd:Q142 .
   OPTIONAL {
     ?id wdt:P31 ?nature_id .
     ?nature_id rdfs:label ?nature_frlabel  filter (lang(?nature_frlabel ) = "fr") .
   }
}
GROUP BY ?nature_id ?nature_frlabel
ORDER BY DESC(?count)' -H 'Accept: text/csv' > wikidata_france_count_p31.csv
