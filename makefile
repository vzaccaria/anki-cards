
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
	JSLATEX_COPYPB=true org2pdf $<  -r --select-tags focus

watch: 
	org2pdf  $(CURORG) -r --open --watch


clean:
	rm -rf anki-cards *.pdf *.log tmp-*

minor: 
	git add . && git commit -m "updates to cards" && git push
