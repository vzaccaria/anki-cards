
#
# Use CURTGT=file.pdf make watch

TARGETS=\
	anki-cards/Algebra/Algebra.json 

all: $(TARGETS)

CURTGT?=Algebra.pdf
CURORG=$(patsubst %.pdf,%.org,$(CURTGT))

anki-cards/Algebra/Algebra.json: Algebra.org header.tex
	mkdir -p $(dir $@)
	pandoc-anki  $< -j -f -r header.tex > $@


%.pdf: %.org
	org2pdf $<  -r

watch: 
	org2pdf  $(CURORG) -r --open --watch


clean:
	rm -rf anki-cards *.pdf *.log tmp-*
