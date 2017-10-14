
TARGETS=\
	anki-cards/Groups/Groups.json \
	anki-cards/VectorSpacesAndModules/VectorSpacesAndModules.json \
	anki-cards/RingsAndFields/RingsAndFields.json \
	anki-cards/Books/Books.json 

all: $(TARGETS)

anki-cards/Groups/Groups.json: Groups.org
	mkdir -p $(dir $@)
	pandoc-anki $< -j > $@

anki-cards/VectorSpacesAndModules/VectorSpacesAndModules.json: VectorSpacesAndModules.org
	mkdir -p $(dir $@)
	pandoc-anki $< -j > $@

anki-cards/RingsAndFields/RingsAndFields.json: RingsAndFields.org
	mkdir -p $(dir $@)
	pandoc-anki $< -j > $@

anki-cards/Books/Books.json: Books.org
	mkdir -p $(dir $@)
	pandoc-anki $< -j > $@

clean:
	rm -rf anki-cards
