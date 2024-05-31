#' get_comptox
#'
#' @param ids A vector of characters where each element is a substance descriptor you wish to query.
#' @param ... Any other argument of `ECOTOXr::websearch_comptox`
#'
#' @return List of data.frames
#' @export
get_comptox <- function(ids, ...) {

  handle_required_args("ids")
  dat <- ECOTOXr::websearch_comptox(
                             searchItems = ids,
                             downloadItems = items_to_down(),
                             ...
                             )
  list(opera_pred = dat$`Main Data`, tox_val = dat$`Toxval Details`)

}



