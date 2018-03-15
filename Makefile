all: home enrichpkg phylopkg


home:
	Rscript -e 'blogdown::build_site()'

enrichpkg: clusterProfiler DOSE ReactomePA

clusterProfiler:
	cd wclusterProfiler;\
	Rscript -e 'blogdown::build_site()';\
	cd ..

DOSE:
	cd wDOSE;\
	Rscript -e 'blogdown::build_site()';\
	cd ..

ReactomePA:
	cd wReactomePA;\
	Rscript -e 'blogdown::build_site()';\
	cd ..

phylopkg: ggtree treeio

ggtree:
	cd wggtree;\
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

