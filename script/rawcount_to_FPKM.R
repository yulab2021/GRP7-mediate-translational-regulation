

################## fpkm ###############################
setwd("C:\\博士科研\\data_ZJ\\20241230返修")


library(tidyverse)
#去除后5列，将第1列作为行名，加列名
rna <- read.table("data/RNAseq_CDS.featurecount1.txt",row.names = 1,header = T)
ribo <- read.table("data/Riboseq_CDS.featurecount1.txt",row.names = 1,header = T)


ID <- intersect(rownames(ribo),rownames(rna))
ribo <- ribo[ID,]
rna <- rna[ID,]

gene_lens <- read.table("gene_length.txt")
gene_lens <- gene_lens[ID,,drop=FALSE]

counts <- cbind(gene_lens,rna,ribo)
colnames(counts)

colSums(counts)


for (i in 2:(ncol(counts))){
  for (j in 1:nrow(counts)){
    counts[j,i+24] <- exp(log(counts[j,i])-log(sum(counts[,i]))-log(counts[j,1])+log(1e9))
  }
}

dim(counts)

colnames(counts)[26:49] <- paste0(colnames(counts)[2:25],"_fpkm")
fpkm <- counts[,26:49]



averaged_fpkm <- sapply(seq(1, ncol(fpkm), by = 3), function(i) {
  rowMeans(fpkm[, i:(i + 2)])
})

fpkm_mean <- as.data.frame(averaged_fpkm)

colnames(fpkm)
colnames(fpkm_mean) <- c(
  paste0(c("ABA_Col","ABA_g7g8","Mock_Col","Mock_g7g8"),"_rna"),
  paste0(c("ABA_Col","ABA_g7g8","Mock_Col","Mock_g7g8"),"_ribo")
  )
colnames(fpkm_mean)

fpkm_mean = fpkm_mean[rowSums(fpkm_mean > 1) >= 8,]


write.table(fpkm_mean, file="fpkm_mean.txt", quote = F,row.names =T,sep = "\t")
