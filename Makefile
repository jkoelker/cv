#

.PHONY: all
all: jason_kölker_cv.pdf

jason_kölker_cv.pdf: jason_kölker_cv.tex resume.cls
	tectonic jason_kölker_cv.tex

.PHONY: shell
shell:
	podman run \
		-it --rm \
		-v $(shell pwd):/code \
		-w /code \
		docker.io/alpine /bin/sh -c "\
			apk add --no-cache aspell aspell-en make tectonic && \
			/bin/sh"

.PHONY: spell
spell:
	aspell -c jason_kölker_cv.tex

.PHONY: clean
clean:
	latexmk -CA
