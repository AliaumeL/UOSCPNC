
SRC=*.tex \
	annexes/*.tex \
	parts/*.tex

.PHONY: all

gom.pdf: $(SRC) bibliographie.bib
	pdflatex gom.tex
	bibtex gom.aux
	pdflatex gom.tex

all: gom.pdf
	echo $(SRC)
	open gom.pdf
