#

.PHONY: all
all: jason_kölker_cv.pdf

jason_kölker_cv.pdf: jason_kölker_cv.tex resume.cls
	tectonic jason_kölker_cv.tex

.PHONY: spell
spell:
	aspell -c jason_kölker_cv.tex

.PHONY: clean
clean:
	latexmk -CA
