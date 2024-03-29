CLEAN=-rm \
			ducksay.animals.tex \
			ducksay.code.v1.tex \
			ducksay.code.v2.tex \
			ducksay.aux \
			ducksay.glo \
			ducksay.hd \
			ducksay.idx \
			ducksay.log \
			ducksay.out \
			ducksay.sty \
			ducksay.toc

quick:
	pdflatex ducksay.dtx

docu:
	${CLEAN}
	pdflatex ducksay.dtx
	pdflatex ducksay.dtx
	pdflatex ducksay.dtx

sty: ducksay.dtx
	pdftex ducksay.dtx

tar:
	tar -cvzf ducksay.tar.gz ducksay.dtx ducksay.pdf README.md

pkg: docu tar clean

.PHONY: clean quick docu pkg

clean:
	${CLEAN}
