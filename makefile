
TARGETS=\
	anki-cards/Algebra/Algebra.json \
	anki-cards/Books/Books.json \
	anki-cards/Category/Category.json 

all: $(TARGETS)

CURTGT=Algebra.pdf
CURORG=$(patsubst %.pdf, %.org, $(CURTGT))

anki-cards/Algebra/Algebra.json: Algebra.org
	mkdir -p $(dir $@)
	pandoc-anki $< -j > $@

anki-cards/Category/Category.json: Category.org
	mkdir -p $(dir $@)
	pandoc-anki $< -j > $@

anki-cards/Books/Books.json: Books.org
	mkdir -p $(dir $@)
	pandoc-anki $< -j > $@

%.pdf: %.org
	org2pdf $< --use-header ~/dotfiles/org-headers/header_anki.org

edit: $(CURTGT)
	open $(CURTGT)
	watchman $(CURORG) "make $(CURTGT)"

clean:
	rm -rf anki-cards
