TEX=$(shell pwd)/ressources/documents/cls//:$(shell kpsewhich --expand-var='$$TEXINPUTS')

all:
	TEXINPUTS=$(TEX) pdflatex Rapport_Stage_Ingenieur_Moreau_Kevin_2015.tex
	TEXINPUTS=$(TEX) pdflatex Rapport_Stage_Ingenieur_Moreau_Kevin_2015.tex
	rm -f *.aux *.cb *.cb2 *.log *.toc *.out *.lof
	evince Rapport_Stage_Ingenieur_Moreau_Kevin_2015.pdf &

clean:
	rm -f Rapport_Stage_Ingenieur_Moreau_Kevin_2015.pdf
	rm -f *.aux *.cb *.cb2 *.log *.toc *.out *.lof