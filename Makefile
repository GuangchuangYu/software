all: home enrichpkg phylopkg semanticpkg ChIPseeker

push:
	git add .;\
	git commit -m 'update';\
	git push -u origin master

enrichpkg: clusterProfiler ReactomePA
phylopkg: ggtree treeio
semanticpkg: DOSE GOSemSim meshes

home:
	Rscript -e 'blogdown::build_site()'


ChIPseeker:
	cd wChIPseeker;\
	Rscript -e 'blogdown::build_site()';\
	cd ..

DOSE:
	cd wDOSE;\
	Rscript -e 'blogdown::build_site()';\
	cd ..

GOSemSim:
	cd wGOSemSim;\
	Rscript -e 'blogdown::build_site()';\
	cd ..

meshes:
	cd wmeshes;\
	Rscript -e 'blogdown::build_site()';\
	cd ..

clusterProfiler:
	cd wclusterProfiler;\
	Rscript -e 'blogdown::build_site()';\
	cd ..

ReactomePA:
	cd wReactomePA;\
	Rscript -e 'blogdown::build_site()';\
	cd ..

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

