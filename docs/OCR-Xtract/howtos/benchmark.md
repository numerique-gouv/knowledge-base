# Quels sont les outils simlaires ?


## Solutions commerciales

- https://aws.amazon.com/fr/textract/features/
- Document AI : https://cloud.google.com/document-ai/docs?hl=fr
- https://docparser.com/blog/zonal-ocr/
    - https://support.docparser.com/article/1259-how-to-extract-data-from-variable-positions?utm_source=data_extraction_onboarding_email&utm_medium=email
- [exemple outil annotate/train/validate/fine tune](https://info.turicode.com/document-data-extraction?utm_term=%2Bpdf%20%2Bdata%20%2Bextractor&utm_campaign=Non-Branded+Campaign&utm_source=adwords&utm_medium=ppc&hsa_acc=2196815462&hsa_cam=12572356040&hsa_grp=119240925053&hsa_ad=507516844964&hsa_src=g&hsa_tgt=kwd-311654942110&hsa_kw=%2Bpdf%20%2Bdata%20%2Bextractor&hsa_mt=b&hsa_net=adwords&hsa_ver=3&gclid=CjwKCAjw9r-DBhBxEiwA9qYUpRshYIkPrAVvmYetCzgIDPxmixezpnRkA16d1ppVmNusWP-GiXvPKRoCQ9kQAvD_BwE)

- https://nanonets.com/blog/table-extraction-deep-learning/
- Iona INRIA : https://hal.inria.fr/hal-01254761 


## Outils open source 


Grobid: parsing and structuring document : https://github.com/kermitt2/grobid

Projet S2OCR: 
- [paper](https://www.aclweb.org/anthology/2020.acl-main.447/)
- [github repo](https://github.com/allenai/s2orc-doc2json)

Extraction de la structure du document 
http://kraken.re/

Librairies open source à utiliser 
- pytesseract
- https://github.com/jbarlow83/OCRmyPDF
- https://gitlab.gnome.org/World/OpenPaperwork/pyocr
- https://github.com/chrismattmann/tika-python (document parser, wraper python de Apache Tika : https://tika.apache.org/)
- Tabula pour l'extraction de tables 
- excalibur
- camelot

Create ground truth documents : https://doc-creator.labri.fr/
Acquire document structure https://www-intuidoc.irisa.fr/docread-generateur-automatique-de-systemes-de-reconnaissance-de-documents-structures/

-  OCR benchmark : https://github.com/clovaai/deep-text-recognition-benchmark

### Projets de recherche à l'INRIA 
- équipe Orpailleur ou LORIA ou READ https://members.loria.fr/ABelaid/
- Equipe LaBRI https://www.labri.fr/perso/domenger/
- Equipe Intuidoc https://www-intuidoc.irisa.fr/ <- cette équipe a bcp travaillé sur le sujet et propose bcp de solutions  

notre api pdf
https://github.com/Rob192/pdf_api