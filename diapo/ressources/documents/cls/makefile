all:
	xsltproc commun/vocabulaireCommunEnCodeLatex.xsl commun/vocabulaireCommun.xml  > commun/vocabulaireCommun.sty
	xsltproc asi/vocabulaireASIEnCodeLatex.xsl asi/vocabulaireASI.xml  > asi/vocabulaireASI.sty

clean:
	rm -f asi/vocabulaireASI.sty
	rm -f commun/vocabulaireCommun.sty
