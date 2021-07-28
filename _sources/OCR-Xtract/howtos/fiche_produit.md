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

To complete