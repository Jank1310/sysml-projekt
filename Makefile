MAINDOCUMENTBASENAME = document
MAINDOCUMENTFILENAME = ${MAINDOCUMENTBASENAME}.tex
PDFDOCNAME = Projekt-Dokumentation.pdf
PDFLATEX_CMD = pdflatex
BIBTEX_CMD = bibtex
GLOSSARIES_CMD = makeglossaries
BUILD_DIR = build

all:
	${PDFLATEX_CMD} ${MAINDOCUMENTFILENAME}
	-${GLOSSARIES_CMD} ${MAINDOCUMENTBASENAME}
	-${BIBTEX_CMD} ${MAINDOCUMENTBASENAME}
	${PDFLATEX_CMD} ${MAINDOCUMENTFILENAME}
	${PDFLATEX_CMD} ${MAINDOCUMENTFILENAME}
	-mkdir ${BUILD_DIR}
	mv ${MAINDOCUMENTBASENAME}.pdf ${BUILD_DIR}/${PDFDOCNAME}

clean:
	-rm -fr *.bcf *.run.xml _*_.* *~ *.aux *-blx.bib *.bbl ${MAINDOCUMENTBASENAME}.dvi *.ps *.glsdefs *.blg *.idx *.ilg *.ind *.toc *.log *.log *.gls *.glg *.ist *.brf *.out *.lof *.lot *.gxg *.glx *.gxs *.glo *.gls *.tdo -f
	-rm -Rf ${BUILD_DIR}
