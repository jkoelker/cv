#

.PHONY: all
all: jason_kölker_cv.pdf

jason_kölker_cv.pdf: jason_kölker_cv.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make jason_kölker_cv.tex

.PHONY: spell
spell:
	aspell -c jason_kölker_cv.tex

.PHONY: clean
clean:
	latexmk -CA
