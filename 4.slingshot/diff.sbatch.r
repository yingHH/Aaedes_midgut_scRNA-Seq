library(Seurat)
library(cowplot)
library(slingshot)
library(grDevices)
library(RColorBrewer)
library(tradeSeq)

data_use = readRDS('./data_use.rds')
sce_pca = readRDS('./sce.slingshot_pca.rds')

counts <- as.matrix(data_use@assays$RNA@counts)
filt_counts <- counts[rowSums(counts > 5) > ncol(counts)/100, ]
dim(filt_counts)

sce_diff <- fitGAM(
    counts = as.matrix(filt_counts), 
    sds = SlingshotDataSet(sce_pca),
    parallel = T,
)

saveRDS(sce_diff, './sce_diff.rds')