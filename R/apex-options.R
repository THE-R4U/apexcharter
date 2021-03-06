



# ApexCharts options ------------------------------------------------------



#' Events options
#'
#' @param click Fires when user clicks on any area of the chart.
#' @param beforeMount Fires before the chart has been drawn on screen.
#' @param mounted Fires after the chart has been drawn on screen.
#' @param updated Fires when the chart has been dynamically updated.
#' @param legendClick Fires when user clicks on legend. 
#' @param selection Fires when user selects rect using the selection tool. 
#' @param dataPointSelection Fires when user clicks on a datapoint (bar/column/marker/bubble/donut-slice). 
#' @param dataPointMouseEnter Fires when user’s mouse enter on a datapoint (bar/column/marker/bubble/donut-slice). 
#' @param dataPointMouseLeave MouseLeave event for a datapoint (bar/column/marker/bubble/donut-slice). 
#' @param beforeZoom This function, if defined, runs just before zooming in/out of the chart allowing you to set a custom range for zooming in/out. 
#' @param zoomed Fires when user zooms in/out the chart using either the selection zooming tool or zoom in/out buttons. 
#' @param scrolled Fires when user scrolls using the pan tool. 
#' @param ... Additional parameters.
#' 
#' @note All arguments should be JavaScript function defined with \code{htmlwidgets::JS}.
#'
#' @note See \url{https://apexcharts.com/docs/options/chart/events/}.
#' 
#' @export
#'
events_opts <- function(click = NULL,
                        beforeMount = NULL,
                        mounted = NULL,
                        updated = NULL,
                        legendClick = NULL,
                        selection = NULL,
                        dataPointSelection = NULL,
                        dataPointMouseEnter = NULL,
                        dataPointMouseLeave = NULL,
                        beforeZoom = NULL,
                        zoomed = NULL,
                        scrolled = NULL,
                        ...) {
  dropNulls(
    list(
      click = click,
      beforeMount = beforeMount,
      mounted = mounted,
      updated = updated,
      legendClick = legendClick,
      selection = selection,
      dataPointSelection = dataPointSelection,
      dataPointMouseEnter = dataPointMouseEnter,
      dataPointMouseLeave = dataPointMouseLeave,
      beforeZoom = beforeZoom,
      zoomed = zoomed,
      scrolled = scrolled,
      ...
    )
  )
}




#' Bar options
#' 
#' Use these options in \code{\link{ax_plotOptions}}.
#'
#' @param horizontal Logical. This option will turn a column chart into a horiontal bar chart.
#' @param endingShape Available Options: \code{"flat"}, \code{"rounded"} or \code{"arrow"}.
#' @param columnWidth In column charts, columnWidth is the percentage of the available width in the grid-rect. 
#' @param barHeight In horizontal bar charts, barHeight is the percentage of the available height in the grid-rect. 
#' @param distributed Logical. Turn this option to make the bars discrete. Each value indicates one bar per series.
#' @param colors A list of parameters.
#' @param dataLabels List with fields \code{position} (available options: \code{"top"}, \code{"center"} or \code{"bottom"})
#' @param ... Additional parameters.
#' 
#' @note See \url{https://apexcharts.com/docs/options/plotoptions/bar/}.
#'
#' @export
#'
bar_opts <- function(horizontal = NULL,
                     endingShape = NULL,
                     columnWidth = NULL,
                     barHeight = NULL,
                     distributed = NULL,
                     colors = NULL,
                     dataLabels = NULL,
                     ...) {
  dropNulls(
    list(
      horizontal = horizontal,
      endingShape = endingShape,
      columnWidth = columnWidth,
      barHeight = barHeight,
      distributed = distributed,
      colors = colors,
      dataLabels = dataLabels,
      ...
    )
  )
}


#' Heatmap options
#' 
#' Use these options in \code{\link{ax_plotOptions}}.
#'
#' @param radius Numeric. Radius of the rectangle inside heatmap.
#' @param enableShades Logical. Enable different shades of color depending on the value
#' @param shadeIntensity Numeric \code{[0,1]}. The intensity of the shades generated for each value.
#' @param colorScale List.
#' @param ... Additional parameters.
#' 
#' @note See \url{https://apexcharts.com/docs/options/plotoptions/heatmap/}.
#'
#' @export
#'
heatmap_opts <- function(radius = NULL,
                         enableShades = NULL,
                         shadeIntensity = NULL,
                         colorScale = NULL,
                         ...) {
  dropNulls(
    list(
      radius = radius,
      enableShades = enableShades,
      shadeIntensity = shadeIntensity,
      colorScale = colorScale,
      ...
    )
  )
}


#' Radial bar options
#' 
#' Use these options in \code{\link{ax_plotOptions}}.
#'
#' @param size Numeric. Manual size of the radialBars instead of calculating automatically from default height / width.
#' @param inverseOrder Logical. Whether to make the first value of series innermost or outermost.
#' @param startAngle Numeric. Angle from which the radialBars should start.
#' @param endAngle Numeric. Angle to which the radialBars should end. The sum of the startAngle and endAngle should not exceed 360.
#' @param offsetX Numeric. Sets the left offset for radialBars.
#' @param offsetY Numeric. Sets the top offset for radialBars.
#' @param hollow List.
#' @param track List.
#' @param dataLabels List.
#' @param ... Additional parameters.
#' 
#' @note See \url{https://apexcharts.com/docs/options/plotoptions/radialbar/}.
#'
#' @export
#'
radialBar_opts <- function(size = NULL,
                           inverseOrder = NULL,
                           startAngle = NULL,
                           endAngle = NULL,
                           offsetX = NULL,
                           offsetY = NULL,
                           hollow = NULL,
                           track = NULL,
                           dataLabels = NULL,
                           ...) {
  dropNulls(
    list(
      size = size,
      inverseOrder = inverseOrder,
      startAngle = startAngle,
      endAngle = endAngle,
      offsetX = offsetX,
      offsetY = offsetY,
      hollow = hollow,
      track = track,
      dataLabels = dataLabels,
      ...
    )
  )
}


#' Pie options
#' 
#' Use these options in \code{\link{ax_plotOptions}}.
#'
#' @param size Numeric. Custom size of the pie which will override the default size calculations.
#' @param donut List with two fields \code{donutSize} (Donut / ring size in percentage relative to the total pie area.)
#'  and \code{background} (The background color of the pie).
#' @param customScale Numeric. Transform the scale of whole pie/donut overriding the default calculations.
#' @param offsetX Numeric. Sets the left offset of the whole pie area.
#' @param offsetY Numeric. Sets the top offset of the whole pie area.
#' @param dataLabels List with field \code{offset} (Numeric, Offset by which labels will move outside / inside of the donut area)
#' @param ... Additional parameters.
#' 
#' @note See \url{https://apexcharts.com/docs/options/plotoptions/pie/}.
#'
#' @export
#'
pie_opts <- function(size = NULL,
                     donut = NULL,
                     customScale = NULL,
                     offsetX = NULL,
                     offsetY = NULL,
                     dataLabels = NULL,
                     ...) {
  dropNulls(
    list(
      size = size,
      donut = donut,
      customScale = customScale,
      offsetX = offsetX,
      offsetY = offsetY,
      dataLabels = dataLabels,
      ...
    )
  )
}

