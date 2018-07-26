LATEXMK=latexmk -pdf -bibtex

all:
	${LATEXMK}

clean:
	${LATEXMK} -c

