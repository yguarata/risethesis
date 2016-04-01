NAME:=risethesis

# To update, run: latex-process-inputs -makefilelist main.tex
TEX_FILES = \


pdf: bib
	-rm -f $(NAME).aux
	pdflatex $(NAME)
	bibtex $(NAME)
	pdflatex $(NAME)
	@echo '****************************************************************'
	pdflatex $(NAME)

final: pdf
	@echo '******** Did you spell-check the paper? ********'
	pdffonts $(NAME).pdf; fi

warnings: bib-update
	make pdf > /tmp/removeme
	@echo '****************************************************************'
	pdflatex $(NAME) | grep "Warning"

export BIBINPUTS ?= .:bib

bib:
ifdef PLUMEBIB
	ln -s ${PLUMEBIB} bib
endif
.PHONY: bib-update
bib-update: bib
# Even if this command fails, it does not terminate the make job.
# However, to skip it, invoke make as:  make NOGIT=1 ...
ifndef NOGIT
	-(cd bib && git pull && make)
endif

clean:
	-rm -f *.aux *.bbl *.blg *.log *.dvi *.lof *.lot *.out *.toc main.pdf

tags: TAGS
TAGS: ${TEX_FILES}
	etags ${TEX_FILES}

