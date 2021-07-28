rm -rf docs/_build &&  \
jupyter-book toc from-project docs > docs/_toc.yml && \
jupyter-book build --all docs
