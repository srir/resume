LATEX=pdflatex --interaction=nonstopmode

default:
	$(MAKE) resume

all:
	$(LATEX) $(TARGET).tex
	$(LATEX) $(TARGET).tex | sed 's/\(Overfull.*\)/\1/'
	$(LATEX) $(TARGET).tex | sed 's/\(Overfull.*\)/\1/'

resume:
	$(MAKE) all TARGET=resume

clean:
	-rm -f *.ps *.dvi *.aux *.log *.out
