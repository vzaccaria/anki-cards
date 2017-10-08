
./anki-cards/Algebra/Algebra.json: Algebra.org
	mkdir -p ./anki-cards/Algebra
	pandoc-anki Algebra.org -j > $@
