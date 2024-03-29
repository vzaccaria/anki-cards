ORG2PDF=org2pdf --debug-latex --emacs-command /Applications/Emacs.app/Contents/MacOS/Emacs-arm64-12

# Use CURTGT=file.pdf make watch

TARGETS=\
	anki-cards/Algebra/Algebra.json 

all: $(TARGETS)

CURTGT?=Algebra.pdf
CURORG=$(patsubst %.pdf,%.org,$(CURTGT))

anki-cards/Algebra/Algebra.json: Algebra.org header.tex
	mkdir -p $(dir $@)
	pandoc-anki  $< -j -f -r header.tex > $@

internal: Algebra.org
	pandoc-anki  $< -i -f 


# for commutative diagrams, copy freetikz into /home/admin/texmf/tex/latex/freetikz
# then use: http://homepages.inf.ed.ac.uk/cheunen/freetikz/freetikz.html

%.tex: %.org
	JSLATEX_COPYPB=true $(ORG2PDF) $< -r -t --select-tags focus --exclude-tags noanki -o $@

%.pdf: %.tex
	jslatex $< --nobibtex

watch: 
	(WATCH=true $(ORG2PDF) $(CURORG) -r --select-tags focus --watch -p --silent &)
	/usr/local/bin/emacsclient -nw $(CURORG) -c

kill:
	pkill -f org2pdf

clean:
	rm -rf anki-cards *.pdf *.log tmp-* Algebra.tex 

rebuild: 
	make clean 
	make Algebra.pdf

update: 
	git add . && git commit -m "updates to cards" && git push

obsidian.md: Algebra.org makefile obsidian.script
	pandoc Algebra.org --wrap=none -t markdown | sed -f obsidian.script > $@
