#!/bin/env Rscript

library(ggplot2)
library("yyplot")

message("ChIPseeker download stats\n")
p <- plot_dlstats_bioc("ChIPseeker")
ggsave(p, filename = "docs/dlstats/ChIPseeker.png", width = 8, height=4)

message("DOSE download stats\n")
p <- plot_dlstats_bioc("DOSE")
ggsave(p, filename = "docs/dlstats/DOSE.png", width = 8, height=4)

message("GOSemSim download stats\n")
p <- plot_dlstats_bioc("GOSemSim")
ggsave(p, filename = "docs/dlstats/GOSemSim.png", width = 8, height=4)

message("ReactomePA download stats\n")
p <- plot_dlstats_bioc("ReactomePA")
ggsave(p, filename = "docs/dlstats/ReactomePA.png", width = 8, height=4)

message("clusterProfiler download stats\n")
p <- plot_dlstats_bioc("clusterProfiler")
ggsave(p, filename = "docs/dlstats/clusterProfiler.png", width = 8, height=4)

message("ggtree download stats\n")
p <- plot_dlstats_bioc("ggtree")
ggsave(p, filename = "docs/dlstats/ggtree.png", width = 8, height=4)

