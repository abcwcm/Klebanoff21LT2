% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fgsea.R
\name{plot_top_pathway}
\alias{plot_top_pathway}
\title{Plot enrichment plot for top enriched pathway}
\usage{
plot_top_pathway(
  fgsea_result = fg_reactome[[i]],
  title = "Top PW",
  orginal_pws = pw_reactome,
  direction = "up",
  ranked_vector
)
}
\arguments{
\item{fgsea_result}{the object produced by \code{\link{fgsea::fgsea}}}

\item{title}{any string}

\item{direction}{either "up" or "down"}

\item{ranked_vector}{the vector used with \code{fgsea} to generate the results}

\item{original_pws}{the pathway-containing object that was used to generate
the fGSEA results to begin with}
}
\description{
Pathway is selected based on ES and p-value order. Only one plot
at a time will be returned.
}
\details{
Wrapper function around \code{\link{fgsea::plotEnrichment}} and
\code{\link{extract_top_pw}}.
}
