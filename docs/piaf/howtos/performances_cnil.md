# Performance : Piaf Search plus fort qu'Eptica

### Domaine de l'étude : cnil.fr
Il était important pour nous de mesurer la pertinence des résultats de Piaf Search, par rapport à ceux issus du moteur de recherche interne de la CNIL qui s'appelle [Eptica](https://www.eptica.com/).
Nous avons donc évalué les performances d'une pipeline de recherche qui inclu une recherche Eptica comme point de départ, à celle de Piaf en utilisant l'algorithme BM25.
 

### Détail de l'évaluation
Dans un premier temps, deux personnnes de l'équipe de la CNIL ont posé environ 300 questions à Eptica et ont enregistré les réponses. Notre dataset d'évaluation (disponible sur demande) est donc un ensemble de triplet: questions, réponses, lien vers le site de la CNIL.   


### Résultats 
Les performances sont légèrement à l'avantage de Piaf Search:

#### Si on ne considère que le premier résultat
| Retriever type | Accuracy |
| -------- | -------- |
| Eptica | 0.31|
| Piaf (BM25)     | 0.50     |


#### Si on considère les trois premiers résultats  
| Retriever type | Accuracy |
| -------- | -------- |
| Service-public  | 0.47     |
| Piaf (BM25)     | 0.69     |

Plus d'information [ici](https://github.com/etalab-ia/piaf-ml/pull/135)
  
  ## Conclusion
Si on cherche à résumer ces résultats, on peut dire que pour l'indexation de la CNIL :
Piaf est nettement plus performant que le moteur Eptica, d'environ 20%.
