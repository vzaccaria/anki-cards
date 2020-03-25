#
# Use CURTGT=file.pdf make watch

TARGETS=\
	anki-cards/Algebra/Algebra.json 

all: $(TARGETS)

CURTGT?=Algebra.pdf
CURORG=$(patsubst %.pdf,%.org,$(CURTGT))

anki-cards/Algebra/Algebra.json: Algebra.processed.org header.tex
	mkdir -p $(dir $@)
	pandoc-anki  $< -j -f -r header.tex > $@

# for commutative diagrams, copy freetikz into /home/admin/texmf/tex/latex/freetikz
# then use: http://homepages.inf.ed.ac.uk/cheunen/freetikz/freetikz.html
#
%.processed.org: %.org
	org2pdf $< --latex-engine org --select-tags focus -o $@

%.tex: %.processed.org
	JSLATEX_COPYPB=true org2pdf $< -r -t --select-tags focus --exclude-tags noanki -o $@

%.pdf: %.tex
	jslatex $< --nobibtex

watch: 
	(WATCH=true org2pdf $(CURORG) -r --select-tags focus --watch -p --silent &)
	/usr/local/bin/emacsclient -nw $(CURORG) -c

kill:
	pkill -f org2pdf

clean:
	rm -rf anki-cards *.pdf *.log tmp-* Algebra.tex Algebra.processed.*

rebuild: 
	make clean 
	make Algebra.pdf

update: 
	git add . && git commit -m "updates to cards" && git push
