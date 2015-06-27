TEX=$(shell pwd)/ressources/beamer-gentoo//:$(shell pwd)/ressources/documents/Picdyn//:$(shell kpsewhich --expand-var='$$TEXINPUTS')
NOM_FICHIER=Picdyn_L_SP_n004

all: Picdyn_L_SP_n004.pdf

Picdyn_L_SP_n004.pdf: lesimages
	TEXINPUTS=$(TEX) pdflatex $(NOM_FICHIER).tex
	TEXINPUTS=$(TEX) pdflatex $(NOM_FICHIER).tex
	rm -f *.aux *.cb *.cb2 *.log *.toc *.out *.nav *.snm *.vrb
	rm -f sources/*.aux
	evince $(NOM_FICHIER).pdf &
	# Compression du pdf
compress :
	gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=$(NOM_FICHIER)-temp.pdf $(NOM_FICHIER).pdf
	mv $(NOM_FICHIER)-temp.pdf $(NOM_FICHIER).pdf

lesimages:
	cd images

clean:	
	cd images; make clean	
	rm -f $(NOM_FICHIER).pdf
	rm -f *.aux *.cb *.cb2 *.log *.toc *.out *.nav *.snm *.vrb
	rm -f sources/*.aux
