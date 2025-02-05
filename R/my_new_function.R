#' a new function I created
#'
#' @param dataset The dataset to add a new column to
#' @param new_var_name The name of the new column
#' @param new_var_value The value for the new column to take
#'
#' @return The input dataset with a new variable called new_var_name with the values of new_var_value
#' @export
#'
#' @importFrom dplyr mutate
#'
#' @examples
#' new_ds <- my_new_function(cars, "new_variable_name", "test_value")
my_new_function <- function(dataset, new_var_name, new_var_value){
  temp_dataset <- dataset |>
    dplyr::mutate(!!new_var_name := new_var_value)

  return(temp_dataset)
}
