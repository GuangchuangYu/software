require(ggplot2)
require(yyplot)
pcs <- yyplot::plot_dlstats_bioc("ChIPseeker")
ggsave(pcs, filename = "docs/ChIPseeker/index_files/figure-html/dlstats-1.png", width = 8, height=4)

