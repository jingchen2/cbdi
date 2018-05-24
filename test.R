library(Rsubread)

bam.files = list.files('/data1/jing/CBDI/raw/PDX_rnaseq/bam',pattern='accepted_hits_added.bam$',full.names = T,recursive = T)
system.time({
  counts = featureCounts(bam.files, annot.inbuilt = 'hg19',nthreads=4)
})




