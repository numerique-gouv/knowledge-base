# L'outil OCR-Xtract

### Améliorer la recherche d'information au sein des sites des administrations publiques


## Contexte
Beaucoup d'administrations disposent de données non directement exploitables. 

## Problématique

Exploiter plus rapidement et plus rapidement les données contenues dans les documents administratifs. 
En termes techniques, cela se traduit par un outil capable d'OCRiser les documents (PDF scannés, photos de documents) et d'extraire et classifier de ces documents les éléments pertinents. 

### Besoins connexes :

L'outil OCR-Xtract pourrait également répondre à d'autres besoins rencontrées dans les administrations: 
- Vérifier la présence des pièces
- Vérifier la validité des pièces (dates de délivrance de moins de 3 mois, CNI toujours valide)
- Vérifier la consistence du dossier (nom, adresse) en croisant les informations extraites des documents et les informations contenues dans un dossier numérique (donc avec des données déjà structurées)
- Certifier les pièces : par exemple toutes les pages sont présentes, toutes les signatures nécessaires sont présentes 


### Besoins "techniques"
- outil d'annotation d'images
    - annoter "from scratch"
    - Corriger les sorties d'un modèle
    - annoter des zones présélectionnés mais qui n'ont pas encore de label (ex bounding boxes de doctr que l'on charge dans le logiciel d'annitation label studio)
    - annoter des documents en définissant des règles métier simples: extraitre l'élément dans une zone géographique prédéfinie ou rechercher le texte remplissant certains critères (expressions régulières) et pouvoir valider ou infirmer ces annotations automatisées par règles via un logiciel d'annotation (il est possible en effet que les règles métiers permettent d'extaire correctement les champs souhaités pour une partie seulement des documents, le logiciel d'annotation permettant de modifier les éléments)
- classifier des documents par type (type de document d'identité)
- extraire des champs (date de validité du document, éléments d'identité par exemple)


## Objectifs
Mesurer: 
- le nombre de documents à traiter "à la main" par les administrations et le temps qu'elles passent à réaliser ces tâches chronophages

## Chronologie
Étape 1 (juin - juillet) : interviews utilisateur
Livrable : compréhension du contexte, recueil du besoin, irritants et personas

## Résultats

Deux typologies de besoin ressortent des cas d’usages qui nous ont été partagés.

Un **premier type** de besoin est celui de traiter des documents courts, de contenu et de forme relativement homogènes, où la localisation du texte joue un rôle important pour la classification des différents types d’informations à extraire. C’est le cas pour le traitement des pièces d’identités (CNI, passeports, permis de conduire…), de documents de type bulletins de salaire, factures, de formulaires (Cerfa, déclarations sociales…).

Un **deuxième besoin** concerne le traitement de documents textuels longs, de contenu et de forme hétérogènes, où le contenu textuel (vocabulaire, constructions syntaxiques, cooccurrences…) est plus important que la spatialisation du texte pour favoriser la reconnaissance.

Détails des cas d'usage sur le airtable: https://airtable.com/appVQnWK0tWqr0As5/tblcniWxn6ohWUDRv/viwtCzZcM6h2IyVEW?blocks=hide . 20 cas d'usages identifiés (Open Lab + Autres cas d'usages recensés auparavant)

### Type 1 : documents courts au format relativement homogènes, à contenu à la fois textuel et graphique 

#### Opportunités 
- Démarches administratives comportant une étape de vérification de documents administratifs inaccessibles par l'administratif via le DNLUF et les API internes
- Enquêtes administratives devant traîter des grands volumes de documents
    - ex : factures provenant d'un grossiste agro-alimentaire
    - ex : bilans sociaux
- Dégager du temps d'agent/gestionnaire
- Documents relativement standardisés
- Les visas coûtent plus cher que le timbre fiscal demandé

#### Risques

- Continuer à faire de la retranscription manuelle si la solution n'est pas suffisamment convaincante 
- Le traitement d'OCR et d'extratction intervient en début de workflow: une erreur à cette étape se répercute dans toute la suite du processus administration. La solution doit être robuste

#### Exemples

- DossierFacile (pièces d'identité, bulletins de salaires)
- Audits (factures, bulletins de salaires)
- Bilans sociaux 




### Type 2 : documents longs, à contenu majoritairement textuel 

### Opportunités

- De nombreuses administrations possèdent un fond documentaire pouvant avoir un impact important sur la vie des citoyens
    - la profondeur des catalogues font que des documents sont parfois des manuscrits
    - certaines archives ne sont pas encore numérisées
- Peut résoudre des problèmes humains plutôt qu'administratifs
- Point d'entrée pour un travail transversal et mutualisé en NLP

#### Risques

- Dette de transparence et d'accès aux documents administratifs anciens
- Confidentialité et secrets
- Spécifités métiers
    - Présence importante de tableaux
- Besoin d'une couche forte d'anonymisation/pseudonymisation pour construire une offre ouverte ou en interface avec le grand public

#### Exemples

- Archives diverses
- Nantes métropole: délibérations
- Demandes d'agréments 
