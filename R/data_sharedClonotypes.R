#' Shared clonotypes
#'
#' @description \code{data.table} of the clonotypes that are found in both
#' conditions MUT and WT in the 21LT2 data set. See the vignette
#' "abbreviations_of_clonotypes.Rmd" for details.
#'
#' @usage data(shared_clonotypes)
#'
#' @examples \dontrun{
#'
#' ## count TRA/TRB
#' clono_freq <- colData(sce.filt)[, c("Sample" ,"cdr3s_aa")] %>%
#'    as.data.frame %>% data.table(., keep.rownames = TRUE) %>%
#'     .[!is.na(cdr3s_aa), .N, c("cdr3s_aa","Sample")]
#' setorder(clono_freq, N)
#'
#' ## formatting the TRA/TRB notations
#' ## will only work if there's just one TRA
#' ct <- dcast(clono_freq, cdr3s_aa ~ Sample, value.var = "N") %>%
#'  .[!is.na(MUT.21LT2) & !is.na(WT.21LT2)]
#'
#' ct[, TRA := gsub(";*TRB:[A-Z]+", "", cdr3s_aa)]
#' ct[, TRA := ifelse(TRA == "", NA, TRA)]
#' ct[, TRB := gsub(".*(TRB:[A-Z]+)", "\\1", cdr3s_aa)]
#' ct[, TRB := ifelse(grepl("^TRA", TRB), NA, TRB)] # if only TRB was present,
#'  I need to fill in the NA
#'  setorder(ct, -MUT.21LT2, -WT.21LT2 )
#'  shared_clonotypes <- copy(ct)
#' }
#'
#' @seealso \code{clonotype_ids}
"shared_clonotypes"



#' Table of customized clonotype IDs
#'
#' @description \code{data.table} with our customized clonotype IDs for ease of
#' visualization and comparison. I.e., the CDR3s amino acid sequences are re-
#' placed with arbitrary IDs. Note thate these clonotypes are those that are
#' found in both conditions of patient 21LT2, i.e. MUT and WT.
#'
#' @details See the vignette "abbreviations_of_clonotypes" about how the consoli-
#' dation and clean up of the TRA/TRB sequences was done.
#'
#' @seealso \code{shared_clonotypes}
"clonotype_ids"