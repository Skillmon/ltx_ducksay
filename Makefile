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
	mkdir ducksay
	cp ducksay.dtx ducksay/ducksay.dtx
	cp ducksay.pdf ducksay/ducksay.pdf
	cp README.md ducksay/README.md
	tar -cvzf ducksay.tar.gz ducksay/
	rm -rf ducksay

pkg: docu tar
	${CLEAN}

.PHONY: clean quick docu pkg

clean:
	${CLEAN} ducksay.tar.gz
