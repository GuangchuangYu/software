#!/bin/env Rscript

library(ggplot2)
library("yyplot")

message("ChIPseeker citation\n")
p <- plot_citation_trend('DO5oG40AAAAJ', '9pM33mqn1YgC')
ggsave(p, file = "docs/citation_trend/ChIPseeker.png", width=8, height=4)

message("DOSE citation\n")
p <- plot_citation_trend('DO5oG40AAAAJ', 'Ug5p-4gJ2f0C')
ggsave(p, file = "docs/citation_trend/DOSE.png", width=8, height=4)

message("GOSemSim citation\n")
p <- plot_citation_trend('DO5oG40AAAAJ', 'tuHXwOkdijsC')
ggsave(p, file = "docs/citation_trend/GOSemSim.png", width=8, height=4)

message("ReactomePA citation\n")
p <- plot_citation_trend('DO5oG40AAAAJ', '8d8msizDQcsC')
ggsave(p, file = "docs/citation_trend/ReactomePA.png", width=8, height=4)


message("clusterProfiler citation\n")
p <- plot_citation_trend('DO5oG40AAAAJ', 'MLfJN-KU85MC')
ggsave(p, file = "docs/citation_trend/clusterProfiler.png", width=8, height=4)

message("ggtree citation\n")
p <- plot_citation_trend('DO5oG40AAAAJ', 'HtEfBTGE9r8C')
ggsave(p, file = "docs/citation_trend/ggtree.png", width=8, height=4)

## message("meshes citation\n")

## ggsave(p, file = "docs/citation_trend/meshes.png", width=8, height=4)

## message("treeio citation\n")

## ggsave(p, file = "docs/citation_trend/treeio.png", width=8, height=4)

