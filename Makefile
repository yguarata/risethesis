NAME:=risethesis

pdf:
	-rm -f $(NAME).aux
	pdflatex $(NAME)
	bibtex $(NAME)
	pdflatex $(NAME)

clean:
	-rm -f *.aux *.bbl *.blg *.log *.dvi *.lof *.lot *.out *.toc risethesis.pdf

