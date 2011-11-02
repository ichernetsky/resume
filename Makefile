PDFNAME = resume
PDFLATEX = pdflatex
RM = rm -f
GREP = grep

all: $(PDFNAME).pdf

$(PDFNAME).pdf: *.tex
	$(PDFLATEX) $(PDFNAME)

.PHONY: clean
clean:
	$(RM) *.aux *.log *.out $(PDFNAME).pdf
