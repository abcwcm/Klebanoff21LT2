% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fgsea.R
\name{get_ranks}
\alias{get_ranks}
\title{Get a ranked vector of gene IDs}
\usage{
get_ranks(lfc_dt = gns.2controls[[1]], rank_by = "t")
}
\arguments{
\item{lfc_dt}{data.table with at least "ENTREZID" and the respective statistics
by which the genes should be ranked (\code{rank_by}, e.g. "t" or "logFC"). This
should contain all genes of interest, e.g. those detectable expression
across all samples.}

\item{rank_by}{indicate the stat that you want to rank the genes by. Default: "t"
(must be part of \code{lfc_dt})}
}
\value{
vector of values of \code{rank_by}, sorted in decreasing order (from
highest to lowest) and named with ENTREZ IDs
}
\description{
Get a ranked vector of gene IDs
}
