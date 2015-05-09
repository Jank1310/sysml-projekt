MAINDOCUMENTBASENAME = document
MAINDOCUMENTFILENAME = ${MAINDOCUMENTBASENAME}.tex
PDFDOCNAME = Projekt-Dokumentation.pdf
PDFLATEX_CMD = pdflatex
BIBTEX_CMD = bibtex
GLOSSARIES_CMD = makeglossaries

all:
	${PDFLATEX_CMD} ${MAINDOCUMENTFILENAME}
	${GLOSSARIES_CMD} ${MAINDOCUMENTBASENAME}
	${BIBTEX_CMD} ${MAINDOCUMENTBASENAME}
	${PDFLATEX_CMD} ${MAINDOCUMENTFILENAME}
	${PDFLATEX_CMD} ${MAINDOCUMENTFILENAME}
	mv ${MAINDOCUMENTFILENAME} ${PDFDOCNAME}
	
clean:
	-rm -r *.bcf *.run.xml _*_.* *~ *.aux *-blx.bib *.bbl ${MAINDOCUMENTBASENAME}.dvi *.ps *.glsdefs *.blg *.idx *.ilg *.ind *.toc *.log *.log *.gls *.glg *.ist *.brf *.out *.lof *.lot *.gxg *.glx *.gxs *.glo *.gls *.tdo -f
