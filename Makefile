TEX = pdflatex
BIB = biber
SRC = main

all: $(SRC).pdf

$(SRC).pdf: $(SRC).tex refs.bib
	$(TEX) $(SRC)
	$(BIB) $(SRC)
	$(TEX) $(SRC)
	$(TEX) $(SRC)

clean:
	rm -f $(SRC).{aux,bbl,bcf,blg,log,out,run.xml,synctex.gz,toc,lof,lot,fdb_latexmk,fls}

distclean: clean
	rm -f $(SRC).pdf

.PHONY: all clean distclean
