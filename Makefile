all: home ggtree treeio

home:
	Rscript -e 'blogdown::build_site()'

ggtree:
	cd wggtree;
	Rscript -e 'blogdown::build_site()';\
	cd ..

treeio:
	cd wtreeio;\
	Rscript -e 'blogdown::build_site()';\
	cd ..

vignette_ggtree:
	cd wggtree/vignettes;\
	Rscript -e 'ff = list.files(pattern=".R|rmd"); sapply(ff, function(f) rmarkdown::render(f))';\
	mv *html ../../docs/ggtree/vignettes/;\
	cd ../..

