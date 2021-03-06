




# ApexCharts API ----------------------------------------------------------


#' Annotations properties
#'
#' @param ax A \code{apexcharts} \code{htmlwidget} object. 
#' @param position Whether to put the annotations behind the charts or in front of it. Available Options: \code{"front"} or \code{"back"}.
#' @param yaxis List of lists.
#' @param xaxis List of lists.
#' @param points List of lists.
#' @param ... Additional parameters.
#' 
#' @note See \url{https://apexcharts.com/docs/options/annotations/}.
#'
#' @return A \code{apexcharts} \code{htmlwidget} object.
#' @export
#'
ax_annotations <- function(ax,
                           position = NULL,
                           yaxis = NULL,
                           xaxis = NULL,
                           points = NULL,
                           ...) {
  params <- c(as.list(environment()), list(...))[-1]
  .ax_opt2(ax, "annotations", l = dropNulls(params))
}


#' Chart parameters
#'
#' @param ax A \code{apexcharts} \code{htmlwidget} object. 
#' @param type Specify the chart type. Available Options: \code{"bar"}, \code{"column"}, \code{"line"},
#'  \code{"pie"}, \code{"donut"}, \code{"radialBar"}, \code{"scatter"}, \code{"bubble"}, \code{"heatmap"}.
#' @param stacked Logical. Enables stacked option for axis charts. 
#' @param stackType When stacked, should the stacking be percentage based or normal stacking. Available options: \code{"normal"} or \code{"100\%"}
#' @param animations A list of parameters.
#' @param background Background color for the chart area. If you want to set background with css, use \code{.apexcharts-canvas} to set it.
#' @param foreColor Sets the text color for the chart. Defaults to \code{#373d3f}.
#' @param dropShadow A list of parameters. See \url{https://apexcharts.com/docs/options/chart/dropshadow/}.
#' @param events See \code{\link{events_opts}}.
#' @param offsetX Sets the left offset for chart.
#' @param offsetY Sets the top offset for chart.
#' @param selection A list of parameters.
#' @param sparkline List. Sparkline hides all the elements of the charts other than the primary paths. Helps to visualize data in small areas. .
#' @param toolbar A list of parameters. See \url{https://apexcharts.com/docs/options/chart/toolbar/}.
#' @param zoom A list of parameters. See \url{https://apexcharts.com/docs/options/chart/zoom/}.
#' @param width Width of the chart. 
#' @param height Height of the chart. 
#' @param ... Additional parameters. 
#'
#' @return A \code{apexcharts} \code{htmlwidget} object.
#' @export
#'
ax_chart <- function(ax,
                     type = NULL,
                     stacked = NULL,
                     stackType = NULL,
                     animations = NULL,
                     background = NULL,
                     foreColor = NULL,
                     dropShadow = NULL,
                     events = NULL,
                     offsetX = NULL,
                     offsetY = NULL,
                     selection = NULL,
                     sparkline = NULL,
                     toolbar = NULL,
                     zoom = NULL,
                     width = NULL,
                     height = NULL,
                     ...) {
  params <- c(as.list(environment()), list(...))[-1]
  .ax_opt2(ax, "chart", l = dropNulls(params))
}


#' Specific options for chart
#'
#' @param ax A \code{apexcharts} \code{htmlwidget} object. 
#' @param bar See \code{\link{bar_opts}}.
#' @param heatmap See \code{\link{heatmap_opts}}.
#' @param radialBar See \code{\link{radialBar_opts}}.
#' @param pie See \code{\link{pie_opts}}.
#' @param ... Additional parameters.
#'
#' @return A \code{apexcharts} \code{htmlwidget} object.
#' @export
#'
ax_plotOptions <- function(ax,
                           bar = NULL,
                           heatmap = NULL,
                           radialBar = NULL,
                           pie = NULL,
                           ...) {
  params <- c(as.list(environment()), list(...))[-1]
  .ax_opt2(ax, "plotOptions", l = dropNulls(params))
}


#' Colors
#'
#' @param ax A \code{apexcharts} \code{htmlwidget} object. 
#' @param ... Colors for the chart’s series. When all colors are used, it starts from the beginning.
#'
#' @return A \code{apexcharts} \code{htmlwidget} object.
#' @export
#' 
#' @note See \url{https://apexcharts.com/docs/options/colors/}
#'
ax_colors <- function(ax, ...) {
  .ax_opt(ax, "colors", ...)
}


#' Labels on data
#'
#' @param ax A \code{apexcharts} \code{htmlwidget} object. 
#' @param enabled To determine whether to show dataLabels or not.
#' @param textAnchor The alignment of text relative to dataLabel’s drawing position.
#'  Accepted values \code{"start"}, \code{"middle"} or \code{"end"}.
#' @param offsetX Sets the left offset for dataLabels.
#' @param offsetY Sets the top offset for dataLabels.
#' @param style A list of parameters.
#' @param dropShadow A list of parameters.
#' @param formatter The formatter function takes in a single value and allows you to format the value before displaying
#' @param ... Additional parameters.
#'
#' @return A \code{apexcharts} \code{htmlwidget} object.
#' @export
#' 
#' @note See \url{https://apexcharts.com/docs/options/datalabels/}
#'
ax_dataLabels <- function(ax,
                          enabled = NULL,
                          textAnchor = NULL,
                          offsetX = NULL,
                          offsetY = NULL,
                          style = NULL,
                          dropShadow = NULL,
                          formatter = NULL,
                          ...) {
  params <- c(as.list(environment()), list(...))[-1]
  .ax_opt2(ax, "dataLabels", l = dropNulls(params))
}


#' Fill property
#'
#' @param ax A \code{apexcharts} \code{htmlwidget} object. 
#' @param type Whether to fill the paths with solid colors or gradient.
#'  Available options: \code{"solid"}, \code{"gradient"}, \code{"pattern"} or \code{"image"}.
#' @param colors Colors to fill the svg paths..
#' @param opacity Opacity of the fill attribute.
#' @param gradient A list of parameters.
#' @param image A list of parameters.
#' @param pattern A list of parameters.
#' @param ... Additional parameters.
#'
#' @return A \code{apexcharts} \code{htmlwidget} object.
#' @export
#' 
#' @note See \url{https://apexcharts.com/docs/options/fill/}
#'
ax_fill <- function(ax,
                    type = NULL,
                    colors = NULL,
                    opacity = NULL,
                    gradient = NULL,
                    image = NULL,
                    pattern = NULL,
                    ...) {
  params <- c(as.list(environment()), list(...))[-1]
  .ax_opt2(ax, "fill", l = dropNulls(params))
}


#' Add grids on chart
#'
#' @param ax A \code{apexcharts} \code{htmlwidget} object. 
#' @param show Logical. To show or hide grid area (including xaxis / yaxis)
#' @param borderColor Colors of grid borders / lines.
#' @param strokeDashArray Creates dashes in borders of svg path. Higher number creates more space between dashes in the border.
#' @param position Whether to place grid behind chart paths of in front. Available options for position: \code{"front"} or \code{"back"}
#' @param xaxis A list of parameters.
#' @param yaxis A list of parameters.
#' @param row A list of parameters.
#' @param column A list of parameters.
#' @param padding A list of parameters.
#' @param ... Additional parameters.
#'
#' @return A \code{apexcharts} \code{htmlwidget} object.
#' @export
#'
#' @note See \url{https://apexcharts.com/docs/options/grid/}
#' 
ax_grid <- function(ax,
                    show = NULL,
                    borderColor = NULL,
                    strokeDashArray = NULL,
                    position = NULL,
                    xaxis = NULL,
                    yaxis = NULL,
                    row = NULL,
                    column = NULL,
                    padding = NULL,
                    ...) {
  params <- c(as.list(environment()), list(...))[-1]
  .ax_opt2(ax, "grid", l = dropNulls(params))
}


#' Alternative axis labels
#'
#' @param ax A \code{apexcharts} \code{htmlwidget} object. 
#' @param labels A vector to use as labels.
#' @param ... Vector. In Axis Charts (line / column), labels can be set instead of setting xaxis categories
#'  option. While, in pie/donut charts, each label corresponds to value in series array.
#'
#' @return A \code{apexcharts} \code{htmlwidget} object.
#' @export
#' 
#' @name ax_labels
#'
#' @note See \url{https://apexcharts.com/docs/options/labels/}
ax_labels <- function(ax, ...) {
  .ax_opt(ax, "labels", ...)
}
#' @rdname ax_labels
#' @export
ax_labels2 <- function(ax, labels) {
  .ax_opt2(ax, "labels", l = labels)
}



#' Legend properties
#'
#' @param ax A \code{apexcharts} \code{htmlwidget} object. 
#' @param show Logical. Whether to show or hide the legend container.
#' @param position Available position options for legend: \code{"top"}, \code{"right"}, \code{"bottom"}, \code{"left"}.
#' @param horizontalAlign Available options for horizontal alignment: \code{"right"}, \code{"center"}, \code{"left"}.
#' @param verticalAlign Available options for vertical alignment: \code{"top"}, \code{"middle"}, \code{"bottom"}
#' @param fontSize Sets the fontSize of legend text elements
#' @param textAnchor The alignment of text relative to legend’s drawing position
#' @param offsetY Sets the top offset for legend container.
#' @param offsetX Sets the left offset for legend container.
#' @param formatter JS function. A custom formatter function to append additional text to the legend series names.
#' @param labels List with two items \code{"foreColor"} (Custom text color for legend labels)
#'  and \code{"useSeriesColors"} (Logical, whether to use primary colors or not)
#' @param markers List.
#' @param itemMargin List with two items \code{"horizontal"} (Horizontal margin for individual legend item)
#'  and \code{"vertical"} (Vertical margin for individual legend item).
#' @param containerMargin List with two items \code{"top"} (Top margin for the whole legend container)
#'  and \code{"left"} (Left margin for the whole legend container).
#' @param onItemClick List with item \code{"toggleDataSeries"}, logical,
#'  when clicked on legend item, it will toggle the visibility of the series in chart.
#' @param onItemHover List with item \code{"highlightDataSeries"}, logical,
#'  when hovered on legend item, it will highlight the paths of the hovered series in chart.
#' @param floating Logical. The floating option will take out the legend from the chart area and make it float above the chart.
#' @param ... Additional parameters.
#'
#' @return A \code{apexcharts} \code{htmlwidget} object.
#' @export
#'
#' @note See \url{https://apexcharts.com/docs/options/legend/}
ax_legend <- function(ax,
                      show = NULL,
                      position = NULL,
                      horizontalAlign = NULL,
                      verticalAlign = NULL,
                      fontSize = NULL,
                      textAnchor = NULL,
                      offsetY = NULL,
                      offsetX = NULL,
                      formatter = NULL,
                      labels = NULL,
                      markers = NULL,
                      itemMargin = NULL,
                      containerMargin = NULL,
                      onItemClick = NULL,
                      onItemHover = NULL,
                      floating = NULL,
                      ...) {
  params <- c(as.list(environment()), list(...))[-1]
  .ax_opt2(ax, "legend", l = dropNulls(params))
}


#' Markers properties
#'
#' @param ax A \code{apexcharts} \code{htmlwidget} object. 
#' @param size Numeric. Size of the marker point.
#' @param colors Sets the fill color(s) of the marker point.
#' @param strokeColor Stroke Color of the marker.
#' @param strokeWidth Stroke Size of the marker.
#' @param strokeOpacity Opacity of the border around marker.
#' @param fillOpacity Opacity of the marker fill color.
#' @param shape Shape of the marker. Available Options for shape: \code{"square"} or \code{"circle"}.
#' @param radius Numeric. Radius of the marker (applies to square shape)
#' @param offsetX Numeric. Sets the left offset of the marker.
#' @param offsetY Numeric. Sets the top offset of the marker.
#' @param hover List with item \code{size} (Size of the marker when it is active).
#' @param ... Additional parameters.
#'
#' @return A \code{apexcharts} \code{htmlwidget} object.
#' @export
#'
#' @note See \url{https://apexcharts.com/docs/options/markers/}
#' 
ax_markers <- function(ax,
                       size = NULL,
                       colors = NULL,
                       strokeColor = NULL,
                       strokeWidth = NULL,
                       strokeOpacity = NULL,
                       fillOpacity = NULL,
                       shape = NULL,
                       radius = NULL,
                       offsetX = NULL,
                       offsetY = NULL,
                       hover = NULL,
                       ...) {
  params <- c(as.list(environment()), list(...))[-1]
  .ax_opt2(ax, "markers", l = dropNulls(params))
}

#
#' No data specification
#'
#' @param ax A \code{apexcharts} \code{htmlwidget} object. 
#' @param text 
#' @param align 
#' @param verticalAlign 
#' @param offsetX 
#' @param offsetY 
#' @param style 
#' @param ... Additional parameters.
#'
#' @return A \code{apexcharts} \code{htmlwidget} object.
#' @noRd
#'
ax_noData <- function(ax,
                      text = NULL,
                      align = NULL,
                      verticalAlign = NULL,
                      offsetX = NULL,
                      offsetY = NULL,
                      style = NULL,
                      ...) {
  params <- c(as.list(environment()), list(...))[-1]
  .ax_opt2(ax, "noData", l = dropNulls(params))
}


#' Responsive options
#'
#' @param ax A \code{apexcharts} \code{htmlwidget} object. 
#' @param ... Additional parameters.
#'
#' @return A \code{apexcharts} \code{htmlwidget} object.
#' @export
#'
#' @note See \url{https://apexcharts.com/docs/options/responsive/}
ax_responsive <- function(ax, ...) {
  .ax_opt(ax, "responsive", ...)
}


#' Add data to a chart
#'
#' @param ax A \code{apexcharts} \code{htmlwidget} object. 
#' @param ... Lists containing data to plot, typically list with two items: \code{name} and \code{data}.
#'
#' @return A \code{apexcharts} \code{htmlwidget} object.
#' @export
#' 
#' @name ax-series
#'
#' @examples
#' 
#' # One serie
#' apexchart() %>% 
#'   ax_series(list(
#'     name = "rnorm",
#'     data = rnorm(10)
#'   ))
#' 
#' # Two series
#' apexchart() %>% 
#'   ax_series(
#'     list(
#'       name = "rnorm 1",
#'       data = rnorm(10)
#'     ),
#'     list(
#'       name = "rnorm 2",
#'       data = rnorm(10)
#'     )
#'   )
ax_series <- function(ax, ...) {
  .ax_opt(ax, "series", ...)
}

#' @param l A list.
#' @export
#' @rdname ax-series
ax_series2 <- function(ax, l) {
  .ax_opt2(ax, "series", l)
}


#' Charts' states
#'
#' @param ax A \code{apexcharts} \code{htmlwidget} object. 
#' @param normal A list of parameters.
#' @param hover A list of parameters.
#' @param active A list of parameters.
#' @param ... Additional parameters.
#'
#' @return A \code{apexcharts} \code{htmlwidget} object.
#' @export
#'
#' @note See \url{https://apexcharts.com/docs/options/states/}
ax_states <- function(ax,
                      normal = NULL,
                      hover = NULL,
                      active = NULL,
                      ...) {
  params <- c(as.list(environment()), list(...))[-1]
  .ax_opt2(ax, "states", l = dropNulls(params))
}


#' Chart's title
#'
#' @param ax A \code{apexcharts} \code{htmlwidget} object. 
#' @param text Text to display as a title of chart.
#' @param align Alignment of subtitle relative to chart area. Possible Options: \code{"left"}, \code{"center"} and \code{"right"}.
#' @param margin Numeric. Vertical spacing around the title text.
#' @param offsetX Numeric. Sets the left offset for subtitle text.
#' @param offsetY Numeric. Sets the top offset for subtitle text
#' @param floating Logical. The floating option will take out the subtitle text from the chart area and make it float on top of the chart.
#' @param style List with two items: \code{fontSize} (Font Size of the title text) and \code{color} (Fore color of the title text).
#' @param ... Additional parameters.
#'
#' @return A \code{apexcharts} \code{htmlwidget} object.
#' @export
#'
#' @note See \url{https://apexcharts.com/docs/options/title/}
ax_title <- function(ax,
                     text = NULL,
                     align = NULL,
                     margin = NULL,
                     offsetX = NULL,
                     offsetY = NULL,
                     floating = NULL,
                     style = NULL,
                     ...) {
  params <- c(as.list(environment()), list(...))[-1]
  .ax_opt2(ax, "title", l = dropNulls(params))
}


#' Chart's subtitle
#'
#' @param ax A \code{apexcharts} \code{htmlwidget} object. 
#' @param text Text to display as a subtitle of chart.
#' @param align Alignment of subtitle relative to chart area. Possible Options: \code{"left"}, \code{"center"} and \code{"right"}.
#' @param margin Numeric. Vertical spacing around the subtitle text.
#' @param offsetX Numeric. Sets the left offset for subtitle text.
#' @param offsetY Numeric. Sets the top offset for subtitle text
#' @param floating Logical. The floating option will take out the subtitle text from the chart area and make it float on top of the chart.
#' @param style List with two items: \code{fontSize} (Font Size of the subtitle text) and \code{color} (Fore color of the subtitle text).
#' @param ... Additional parameters.
#'
#' @return A \code{apexcharts} \code{htmlwidget} object.
#' @export
#'
#' @note See \url{https://apexcharts.com/docs/options/subtitle/}
ax_subtitle <- function(ax,
                        text = NULL,
                        align = NULL,
                        margin = NULL,
                        offsetX = NULL,
                        offsetY = NULL,
                        floating = NULL,
                        style = NULL,
                        ...) {
  params <- c(as.list(environment()), list(...))[-1]
  .ax_opt2(ax, "subtitle", l = dropNulls(params))
}


#' Stroke properties
#'
#' @param ax A \code{apexcharts} \code{htmlwidget} object. 
#' @param show Logical. To show or hide path-stroke / line
#' @param curve In line / area charts, whether to draw smooth lines or straight lines.
#'  Available Options: \code{"smooth"} (connects the points in a curve fashion. Also known as spline) 
#'  and \code{"straight"} (connect the points in straight lines.).
#' @param lineCap For setting the starting and ending points of stroke. Available Options:
#'  \code{"butt"} (ends the stroke with a 90-degree angle), \code{"square"}
#'   (similar to butt except that it extends the stroke beyond the length of the path) 
#'   and \code{"round"} (ends the path-stroke with a radius that smooths out the start and end points)
#' @param width Sets the width of border for svg path.
#' @param colors Colors to fill the border for paths.
#' @param dashArray Creates dashes in borders of svg path. Higher number creates more space between dashes in the border. 
#' @param ... Additional parameters.
#'
#' @return A \code{apexcharts} \code{htmlwidget} object.
#' @export
#'
#' @note See \url{https://apexcharts.com/docs/options/stroke/}
ax_stroke <- function(ax,
                      show = NULL,
                      curve = NULL,
                      lineCap = NULL,
                      width = NULL,
                      colors = NULL,
                      dashArray = NULL,
                      ...) {
  params <- c(as.list(environment()), list(...))[-1]
  .ax_opt2(ax, "stroke", l = dropNulls(params))
}


#' Tooltip options
#'
#' @param ax A \code{apexcharts} \code{htmlwidget} object. 
#' @param enabled Logical. Show tooltip when user hovers over chart area.
#' @param shared Logical. When having multiple series, show a shared tooltip.
#' @param followCursor Logical. Follow user’s cursor position instead of putting tooltip on actual data points.
#' @param intersect Logical. Show tooltip only when user hovers exactly over datapoint.
#' @param inverseOrder Logical. In multiple series, when having shared tooltip, inverse the order of series (for better comparison in stacked charts).
#' @param custom JS function. Draw a custom html tooltip instead of the default one based on the values provided in the function arguments. 
#' @param fillSeriesColor Logical. When enabled, fill the tooltip background with the corresponding series color.
#' @param onDatasetHover A list of parameters.
#' @param theme A list of parameters.
#' @param x A list of parameters.
#' @param y A list of parameters.
#' @param z A list of parameters.
#' @param marker A list of parameters.
#' @param items A list of parameters.
#' @param fixed A list of parameters.
#' @param ... Additional parameters.
#'
#' @return A \code{apexcharts} \code{htmlwidget} object.
#' @export
#'
#' @note See \url{https://apexcharts.com/docs/options/tooltip/}
ax_tooltip <- function(ax,
                       enabled = NULL,
                       shared = NULL,
                       followCursor = NULL,
                       intersect = NULL,
                       inverseOrder = NULL,
                       custom = NULL,
                       fillSeriesColor = NULL,
                       onDatasetHover = NULL,
                       theme = NULL,
                       x = NULL,
                       y = NULL,
                       z = NULL,
                       marker = NULL,
                       items = NULL,
                       fixed = NULL,
                       ...) {
  params <- c(as.list(environment()), list(...))[-1]
  .ax_opt2(ax, "tooltip", l = dropNulls(params))
}


#' X-axis options
#'
#' @param ax A \code{apexcharts} \code{htmlwidget} object. 
#' @param type Character. Available Options : \code{"categories"} and \code{"datetime"}.
#' @param categories Categories are labels which are displayed on the x-axis.
#' @param labels A list of parameters.
#' @param axisBorder A list of parameters.
#' @param axisTicks A list of parameters.
#' @param tickAmount Number of Tick Intervals to show.
#' @param min Lowest number to be set for the x-axis. The graph drawing beyond this number will be clipped off.
#' @param max Highest number to be set for the x-axis. The graph drawing beyond this number will be clipped off.
#' @param range Range takes the max value of x-axis, subtracts the provided range value and gets the min value based on that.
#'  So, technically it helps to keep the same range when min and max values gets updated dynamically.
#' @param floating Logical. Floating takes x-axis is taken out of normal flow and places x-axis on svg element directly,
#'  similar to an absolutely positioned element. Set the offsetX and offsetY then to adjust the position manually
#' @param position Setting this option allows you to change the x-axis position. Available options: \code{"top"} and \code{"bottom"}.
#' @param title A list of parameters.
#' @param crosshairs A list of parameters.
#' @param tooltip A list of parameters.
#' @param ... Additional parameters.
#'
#' @return A \code{apexcharts} \code{htmlwidget} object.
#' @export
#'
#' @note See \url{https://apexcharts.com/docs/options/xaxis/}
ax_xaxis <- function(ax,
                     type = NULL,
                     categories = NULL,
                     labels = NULL,
                     axisBorder = NULL,
                     axisTicks = NULL,
                     tickAmount = NULL,
                     min = NULL,
                     max = NULL,
                     range = NULL,
                     floating = NULL,
                     position = NULL,
                     title = NULL,
                     crosshairs = NULL,
                     tooltip = NULL,
                     ...) {
  params <- c(as.list(environment()), list(...))[-1]
  .ax_opt2(ax, "xaxis", l = dropNulls(params))
}


#' Y-axis options
#'
#' @param ax A \code{apexcharts} \code{htmlwidget} object. 
#' @param opposite Logical. When enabled, will draw the yaxis on the right side of the chart.
#' @param tickAmount Number of Tick Intervals to show.
#' @param max Lowest number to be set for the y-axis. The graph drawing beyond this number will be clipped off.
#' @param min Highest number to be set for the y-axis. The graph drawing beyond this number will be clipped off.
#' @param floating Logical. Floating takes y-axis is taken out of normal flow and places y-axis on svg element directly,
#'  similar to an absolutely positioned element. Set the offsetX and offsetY then to adjust the position manually
#' @param labels A list of parameters.
#' @param axisBorder A list of parameters.
#' @param axisTicks A list of parameters.
#' @param title A list of parameters.
#' @param tooltip A list of parameters.
#' @param crosshairs A list of parameters.
#' @param ... Additional parameters.
#'
#' @return A \code{apexcharts} \code{htmlwidget} object.
#' @export
#'
#' @note See \url{https://apexcharts.com/docs/options/yaxis/}
ax_yaxis <- function(ax,
                     opposite = NULL,
                     tickAmount = NULL,
                     max = NULL,
                     min = NULL,
                     floating = NULL,
                     labels = NULL,
                     axisBorder = NULL,
                     axisTicks = NULL,
                     title = NULL,
                     tooltip = NULL,
                     crosshairs = NULL,
                     ...) {
  params <- c(as.list(environment()), list(...))[-1]
  .ax_opt2(ax, "yaxis", l = dropNulls(params))
}


#' Theme for charts
#'
#' @param ax A \code{apexcharts} \code{htmlwidget} object. 
#' @param palette Character. Available palettes: \code{"palette1"} to \code{"palette10"}.
#' @param monochrome A list of parameters.
#' @param ... Additional parameters.
#'
#' @return A \code{apexcharts} \code{htmlwidget} object.
#' @export
#'
#' @note See \url{https://apexcharts.com/docs/options/theme/}
ax_theme <- function(ax,
                     palette = NULL,
                     monochrome = NULL,
                     ...) {
  params <- c(as.list(environment()), list(...))[-1]
  .ax_opt2(ax, "theme", l = dropNulls(params))
}
