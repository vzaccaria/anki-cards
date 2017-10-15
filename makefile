
TARGETS=\
	anki-cards/Algebra/Algebra.json \
	anki-cards/Books/Books.json 

all: $(TARGETS)

anki-cards/Algebra/Algebra.json: Algebra.org
	mkdir -p $(dir $@)
	pandoc-anki $< -j > $@


anki-cards/Books/Books.json: Books.org
	mkdir -p $(dir $@)
	pandoc-anki $< -j > $@

clean:
	rm -rf anki-cards
