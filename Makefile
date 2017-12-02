
default:  fyp_document.pdf

b build: fyp_document.pdf
	biber fyp_document
	pdflatex --shell-escape fyp_document

fyp_document.pdf: fyp_document.tex
	pdflatex --shell-escape fyp_document

clean:
	rm -f fyp_document.aux fyp_document.bbl fyp_document.bcf fyp_document.blg \
	fyp_document.lof fyp_document.toc fyp_document.log fyp_document.lot \
	fyp_document.out fyp_document.run.out fyp_document.run.xml

cleanall: clean
	rm -f fyp_document.pdf
