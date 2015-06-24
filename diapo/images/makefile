FICHIERS_PDF=recyclage_activation_keys.pdf one_shot_activation_keys.pdf nico_gestionComptable_cb.pdf nico_gestionComptable_prelevement.pdf nico_cycleLicence.pdf activation_key.pdf planning_sprints.pdf us_2678_legos.pdf 


.SUFFIXES : .pdf .eps .tex .fig .dia .svg

all: ${FICHIERS_PDF}

.eps.pdf:
	epstopdf $*.eps

.fig.pdf:
	fig2dev -L pdf $*.fig $*.pdf

.dia.eps:
	dia --export=$*.eps --filter=eps-builtin $*.dia

.svg.pdf:
	inkscape -D -z --file=$*.svg --export-pdf=$*.pdf
	
clean:
	rm -f ${FICHIERS_PDF}
