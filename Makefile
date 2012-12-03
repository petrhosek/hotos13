TEXFILES := paper.tex

.PHONY: all clean

all: $(TEXFILES:.tex=.pdf)

%.pdf: %.tex
	TEXMFOUTPUT=$(CURDIR) rubber -d -Wrefs -Wmisc $<

clean:
	TEXMFOUTPUT=$(CURDIR) rubber -d --clean $(TEXFILES)
	rm -f *~ *.log
