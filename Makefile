build:
	Rscript -e 'blogdown::build_site()'


ggtree:
	cd wggtree;\
	ln -s ../themes themes;\
	Rscript -e 'blogdown::build_site()';\
	##rm themes;\
	cd ..

vignette_ggtree:
	cd wggtree/vignettes;\
	Rscript -e 'ff = list.files(pattern=".R|rmd"); sapply(ff, function(f) rmarkdown::render(f))';\
	mv *html ../../docs/ggtree/vignettes/;\
	cd ../..

