# SIFT-seq data for patient 21LT2

R data package related to 

>Chandran et al. *Immunogenicity and therapeutic targeting of a public neoantigen derived from mutated PIK3CA* Nat Medicine (2022).

This package contains access to the processed TCR-seq and scRNA-seq data of T cells obtained from patient 21LT2.

## How to use it

```
## install
devtools::install_github("abcwcm/Klebanoff21LT2")
```

Upon installation, the processed data, e.g. in the form of `SingleCellExperiment` objects, can be loaded thus:

```
## load SingleCellExperiment objects
sce.21 <- Klebanoff21LT2::load_21LT2shared()

## load results of differential gene expression comparisons
## see 
Klebanoff21LT2::load_DE_results() # loads an object named `delist.both`
de.21 <- delist.both; rm(delist.both)
```

For more details, see the [code repository](https://github.com/abcwcm/Chandran2021).
