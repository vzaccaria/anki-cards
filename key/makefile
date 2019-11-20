
PAGESOURCE?=images.pdf

all: \
	page-1-crop.pdf \
	page-3-crop.pdf \
	page-2-crop.pdf 

page-%-full.pdf: images.pdf
	pdftk $< cat $*-$* output $@

page-%-crop.pdf: page-%-full.pdf
	pdfcrop $<
	mv page-$*-full-crop.pdf page-$*-crop.pdf

