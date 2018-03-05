build:
	Rscript -e 'blogdown::build_site()'


ggtree:
	cd wggtree;\
	ln -s ../themes themes;\
	Rscript -e 'blogdown::build_site()';\
	rm themes;\
	cd ..
