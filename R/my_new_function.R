#' Takes in a dataset and adds a new column with new values
#'
#' @param dataset Any input dataset we want to add a column to
#' @param new_variable_name The name of the new column ("text string")
#' @param new_variable_value The value that the new column should take
#'
#' @return The input dataset with the new column added
#' @export
#'
#' @importFrom dplyr mutate
#'
#' @examples
#' corproject::my_new_function(cars, "hello", "abc")
my_new_function <- function(dataset, new_variable_name, new_variable_value){
  temp_dataset <- dataset |>
    dplyr::mutate(!!new_variable_name := new_variable_value)

  return(temp_dataset)
}

