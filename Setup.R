# setup.R ----
# Install any missing CRAN & Bioconductor packages for this project.

cran_pkgs <- c(
  "forcats", "stringr", "ggplot2", "ggrepel",
  "readr", "tidyr", "survminer",
  "here",   "rmarkdown", "knitr"
)

bio_pkgs  <- c(
  "GEOquery", "limma", "pheatmap", "org.Hs.eg.db"
)

install_if_missing <- function(pkg, bioc = FALSE) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    message("Installing ", pkg, " …")
    if (bioc) {
      if (!requireNamespace("BiocManager", quietly = TRUE))
        install.packages("BiocManager", repos = "https://cloud.r-project.org")
      BiocManager::install(pkg, ask = FALSE, update = FALSE, quiet = TRUE)
    } else {
      install.packages(pkg, repos = "https://cloud.r-project.org", quiet = TRUE)
    }
  }
}

lapply(cran_pkgs, install_if_missing, bioc = FALSE)
lapply(bio_pkgs,  install_if_missing, bioc = TRUE)
