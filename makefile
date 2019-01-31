
#
# Use CURTGT=file.pdf make watch

TARGETS=\
	anki-cards/Algebra/Algebra.json \
	anki-cards/Books/Books.json

all: $(TARGETS)

CURTGT?=Algebra.pdf
CURORG=$(patsubst %.pdf,%.org,$(CURTGT))

anki-cards/Algebra/Algebra.json: Algebra.org
	mkdir -p $(dir $@)
	pandoc-anki  $< -j -f > $@

anki-cards/Books/Books.json: Books.org
	mkdir -p $(dir $@)
	pandoc-anki $< -j > $@

%.pdf: %.org
	org2pdf $<  -r

watch: 
	org2pdf  $(CURORG) -r --open --watch


clean:
	rm -rf anki-cards *.pdf *.log tmp-*
