FROM bioconductor/bioconductor_docker:RELEASE_3_22

# Select the Bioconductor release; distribute the built course image for fully
# identical package builds across lab sections. Package names follow the
# Bioconductor 3.22 package index and are case-sensitive.
RUN R -q -e 'options(Ncpus = max(1L, parallel::detectCores() - 1L)); BiocManager::install(c("TCGAbiolinks", "DESeq2", "clusterProfiler"), ask = FALSE, update = FALSE)'
