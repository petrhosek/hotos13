TEXFILES := paper.tex

.PHONY: all clean

all: $(TEXFILES:.tex=.pdf)

%.pdf: %.tex
	TEXMFOUTPUT=$(CURDIR) rubber -d -Wrefs -Wmisc $<

paper.pdf: paper.tex intro.tex overview.tex prototype.tex related.tex \
           conclusion.tex motivation.tex references.bib crossreferences.bib

clean:
	TEXMFOUTPUT=$(CURDIR) rubber -d --clean $(TEXFILES)
	rm -f *~ *.log
