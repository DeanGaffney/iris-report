MAIN = fyp_document2

default:
	pdflatex --shell-escape $(MAIN)
	biber $(MAIN)
	pdflatex --shell-escape $(MAIN)

b build: $(MAIN).pdf
	biber $(MAIN)
	pdflatex --shell-escape $(MAIN)

$(MAIN).pdf: $(MAIN).tex
	pdflatex --shell-escape $(MAIN)

clean:
	rm -f $(MAIN).aux $(MAIN).bbl $(MAIN).bcf $(MAIN).blg \
	$(MAIN).lof $(MAIN).toc $(MAIN).log $(MAIN).lot \
	$(MAIN).out $(MAIN).run.out $(MAIN).run.xml

cleanall: clean
	rm -f $(MAIN).pdf

trello:
	python trello.py
	pdflatex trello.tex

panel_copies: $(MAIN)_KMurphy.pdf $(MAIN)_ROConnor.pdf

$(MAIN)_KMurphy.pdf: $(MAIN).tex
	pdflatex -shell-escape -jobname=$(MAIN) "\\def\\Reader{Dr. K Murphy (Supervisor)}\\input{fyp_document2}"
	cp $(MAIN).pdf $@ 

$(MAIN)_ROConnor.pdf: $(MAIN).tex
	pdflatex -shell-escape -jobname=$(MAIN) "\\def\\Reader{Rob O Connor}\\input{fyp_document2}"
	cp $(MAIN).pdf $@ 
 	