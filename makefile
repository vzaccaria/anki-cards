
anki-cards/Groups/Groups.json: Groups.org
	mkdir -p $(dir $@)
	pandoc-anki $< -j > $@

anki-cards/Algebra/Algebra.json: Algebra.org
	mkdir -p ./anki-cards/Algebra
	pandoc-anki Algebra.org -j > $@
