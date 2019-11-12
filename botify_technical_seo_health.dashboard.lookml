- dashboard: botify_technical_health_dashboard
  title: Botify Technical Health Dashboard
  layout: newspaper
  load_configuration: wait
  elements:
  - name: YOY Changes - Non Compliant Reasons
    type: text
    title_text: YOY Changes - Non Compliant Reasons
    subtitle_text: ''
    body_text: ''
    row: 16
    col: 12
    width: 12
    height: 2
  - name: ''
    type: text
    body_text: <img src="https://image4.owler.com/logo/botify_owler_20190226_213226_original.png"
      width="200px" height="100px">
    row: 0
    col: 4
    width: 20
    height: 3
  - title: Untitled (copy)
    name: Untitled (copy)
    model: looker_botify
    explore: export
    type: single_value
    fields: [export.count, export.partition_date, export.non_compliance_reason_is_noindex_status]
    filters:
      export.is_compliant: 'No'
      export.non_compliance_reason_is_noindex_status: 'Yes'
    sorts: [export.count desc]
    limit: 500
    dynamic_fields: [{table_calculation: change, label: Change, expression: "${export.count}/offset(${export.count},1)-1",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Noindex URLs
    value_format: ''
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Crawl Date: export.partition_date
      Pagetype: export.pagetype
    row: 18
    col: 20
    width: 4
    height: 5
  - title: Untitled (copy 2)
    name: Untitled (copy 2)
    model: looker_botify
    explore: export
    type: single_value
    fields: [export.count, export.partition_date, export.non_compliance_reason_is_non_200_http_status_code]
    filters:
      export.is_compliant: 'No'
      export.non_compliance_reason_is_non_200_http_status_code: 'Yes'
    sorts: [export.count desc]
    limit: 500
    dynamic_fields: [{table_calculation: change, label: Change, expression: "${export.count}/offset(${export.count},1)-1",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Non-200 Status URLs
    value_format: ''
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Crawl Date: export.partition_date
      Pagetype: export.pagetype
    row: 18
    col: 12
    width: 4
    height: 5
  - title: Untitled (copy 3)
    name: Untitled (copy 3)
    model: looker_botify
    explore: export
    type: single_value
    fields: [export.count, export.partition_date, export.non_compliance_reason_is_non_self_canonical_tag]
    filters:
      export.is_compliant: 'No'
      export.non_compliance_reason_is_non_self_canonical_tag: 'Yes'
    sorts: [export.count desc]
    limit: 500
    dynamic_fields: [{table_calculation: change, label: Change, expression: "${export.count}/offset(${export.count},1)-1",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Non-Canonical URLs
    value_format: ''
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Crawl Date: export.partition_date
      Pagetype: export.pagetype
    row: 18
    col: 16
    width: 4
    height: 5
  - title: Visits Over Time
    name: Visits Over Time
    model: looker_botify
    explore: export
    type: looker_line
    fields: [export.partition_date, export.sum_no__of_visits_from_organic_providers]
    filters:
      export.partition_date: 60 days
    sorts: [export.partition_date desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: URLs, orientation: left, series: [{axisId: export.sum_no__of_visits_from_organic_providers,
            id: export.sum_no__of_visits_from_organic_providers, name: Sum No of Visits
              From Organic Providers}], showLabels: true, showValues: true, maxValue: 170000,
        minValue: 80000, valueFormat: '', unpinAxis: false, tickDensity: default,
        type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Date
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    label_value_format: ''
    series_types: {}
    point_style: none
    series_colors:
      Below 1 - 0 - export.count: "#9174F0"
      1 or Above - 1 - export.count: "#FFD95F"
    series_labels:
      Below 1 - 0 - export.count: Not Active
      1 or Above - 1 - export.count: Active
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    listen: {}
    row: 9
    col: 0
    width: 12
    height: 7
  - title: Crawl Ratio Over Time
    name: Crawl Ratio Over Time
    model: looker_botify
    explore: export
    type: looker_area
    fields: [export.partition_date, export.count, export.google_crawls_range]
    pivots: [export.google_crawls_range]
    fill_fields: [export.google_crawls_range]
    filters:
      export.partition_date: 60 days
    sorts: [export.partition_date desc, export.google_crawls_range desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: URLs, orientation: left, series: [{axisId: Below 1 - 0 - export.count,
            id: Below 1 - 0 - export.count, name: Not Crawled}, {axisId: 1 or Above
              - 1 - export.count, id: 1 or Above - 1 - export.count, name: Crawled}],
        showLabels: true, showValues: true, valueFormat: '', unpinAxis: false, tickDensity: default,
        type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Date
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    label_value_format: ''
    series_types: {}
    point_style: none
    series_colors:
      Below 1 - 0 - export.count: "#988bc2"
      1 or Above - 1 - export.count: "#592EC2"
    series_labels:
      Below 1 - 0 - export.count: Not Crawled
      1 or Above - 1 - export.count: Crawled
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    listen: {}
    row: 23
    col: 0
    width: 12
    height: 6
  - title: Active Pages Ratio
    name: Active Pages Ratio
    model: looker_botify
    explore: export
    type: looker_area
    fields: [export.count, export.partition_date, export.organic_visits_range]
    pivots: [export.organic_visits_range]
    fill_fields: [export.organic_visits_range]
    filters:
      export.partition_date: 60 days
    sorts: [export.partition_date desc, export.organic_visits_range desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: URLs, orientation: left, series: [{axisId: Below 1 - 0 - export.count,
            id: Below 1 - 0 - export.count, name: Not Crawled}, {axisId: 1 or Above
              - 1 - export.count, id: 1 or Above - 1 - export.count, name: Crawled}],
        showLabels: true, showValues: true, valueFormat: '', unpinAxis: false, tickDensity: default,
        type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Date
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    label_value_format: ''
    series_types: {}
    point_style: none
    series_colors:
      Below 1 - 0 - export.count: "#9174F0"
      1 or Above - 1 - export.count: "#FFD95F"
    series_labels:
      Below 1 - 0 - export.count: Not Active
      1 or Above - 1 - export.count: Active
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    listen: {}
    row: 9
    col: 12
    width: 12
    height: 7
  - title: Revenue Contribution by Pagetype
    name: Revenue Contribution by Pagetype
    model: looker_botify
    explore: export
    type: looker_column
    fields: [export.partition_date, export.sum_estimated_revenue_from_organic_providers,
      export.pagetype]
    pivots: [export.pagetype]
    filters:
      export.partition_date: 100 days
    sorts: [export.partition_date, export.pagetype]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: "% of Revenue from Organic Providers", orientation: left, series: [
          {axisId: about-misc - export.sum_estimated_revenue_from_organic_providers,
            id: about-misc - export.sum_estimated_revenue_from_organic_providers,
            name: about-misc}, {axisId: article - export.sum_estimated_revenue_from_organic_providers,
            id: article - export.sum_estimated_revenue_from_organic_providers, name: article},
          {axisId: forums/forum - export.sum_estimated_revenue_from_organic_providers,
            id: forums/forum - export.sum_estimated_revenue_from_organic_providers,
            name: forums/forum}, {axisId: forums/home1 - export.sum_estimated_revenue_from_organic_providers,
            id: forums/home1 - export.sum_estimated_revenue_from_organic_providers,
            name: forums/home1}, {axisId: forums/index - export.sum_estimated_revenue_from_organic_providers,
            id: forums/index - export.sum_estimated_revenue_from_organic_providers,
            name: forums/index}, {axisId: forums/message - export.sum_estimated_revenue_from_organic_providers,
            id: forums/message - export.sum_estimated_revenue_from_organic_providers,
            name: forums/message}, {axisId: forums/other - export.sum_estimated_revenue_from_organic_providers,
            id: forums/other - export.sum_estimated_revenue_from_organic_providers,
            name: forums/other}, {axisId: home - export.sum_estimated_revenue_from_organic_providers,
            id: home - export.sum_estimated_revenue_from_organic_providers, name: home},
          {axisId: nav/author - export.sum_estimated_revenue_from_organic_providers,
            id: nav/author - export.sum_estimated_revenue_from_organic_providers,
            name: nav/author}, {axisId: nav/category - export.sum_estimated_revenue_from_organic_providers,
            id: nav/category - export.sum_estimated_revenue_from_organic_providers,
            name: nav/category}, {axisId: nav/tag - export.sum_estimated_revenue_from_organic_providers,
            id: nav/tag - export.sum_estimated_revenue_from_organic_providers, name: nav/tag},
          {axisId: old/articles - export.sum_estimated_revenue_from_organic_providers,
            id: old/articles - export.sum_estimated_revenue_from_organic_providers,
            name: old/articles}, {axisId: old/teampage - export.sum_estimated_revenue_from_organic_providers,
            id: old/teampage - export.sum_estimated_revenue_from_organic_providers,
            name: old/teampage}, {axisId: other - export.sum_estimated_revenue_from_organic_providers,
            id: other - export.sum_estimated_revenue_from_organic_providers, name: other},
          {axisId: pagination/articles-lists - export.sum_estimated_revenue_from_organic_providers,
            id: pagination/articles-lists - export.sum_estimated_revenue_from_organic_providers,
            name: pagination/articles-lists}, {axisId: subdomains - export.sum_estimated_revenue_from_organic_providers,
            id: subdomains - export.sum_estimated_revenue_from_organic_providers,
            name: subdomains}, {axisId: videos - export.sum_estimated_revenue_from_organic_providers,
            id: videos - export.sum_estimated_revenue_from_organic_providers, name: videos}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Date
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: ordinal
    y_axis_combined: true
    ordering: desc
    show_null_labels: false
    column_group_spacing_ratio: 0.1
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    listen: {}
    row: 3
    col: 12
    width: 12
    height: 6
  - title: Total Revenue & Revenue Per Visit
    name: Total Revenue & Revenue Per Visit
    model: looker_botify
    explore: export
    type: looker_area
    fields: [export.sum_estimated_revenue_from_organic_providers, export.partition_date,
      export.sum_no__of_visits_from_organic_providers]
    filters:
      export.partition_date: 100 days
    sorts: [export.sum_estimated_revenue_from_organic_providers desc]
    limit: 500
    dynamic_fields: [{table_calculation: average_revenue_per_visit, label: Average
          Revenue Per Visit, expression: "${export.sum_estimated_revenue_from_organic_providers}/${export.sum_no__of_visits_from_organic_providers}",
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: export.sum_estimated_revenue_from_organic_providers,
            id: export.sum_estimated_revenue_from_organic_providers, name: Revenue
              from Organic Providers}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}, {label: '', orientation: right, series: [
          {axisId: average_revenue_per_visit, id: average_revenue_per_visit, name: Average
              Revenue Per Visit}], showLabels: true, showValues: true, unpinAxis: true,
        tickDensity: default, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Date
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    label_value_format: "$0"
    series_types:
      export.sum_no__of_visits_from_organic_providers: line
      export.sum_estimated_revenue_from_organic_providers: line
    point_style: none
    series_colors:
      export.sum_no__of_visits_from_organic_providers: "#FFB101"
      average_revenue_per_visit: "#0498B8"
      export.sum_estimated_revenue_from_organic_providers: "#FFB101"
    series_labels:
      export.sum_estimated_revenue_from_organic_providers: Revenue from Organic Providers
      export.sum_no__of_visits_from_organic_providers: Visits from Organic Providers
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [export.sum_no__of_visits_from_organic_providers]
    listen: {}
    row: 3
    col: 0
    width: 12
    height: 6
  - title: Non Compliant URL Trend
    name: Non Compliant URL Trend
    model: looker_botify
    explore: export
    type: looker_line
    fields: [export.count, export.partition_date]
    filters:
      export.is_compliant: 'No'
    sorts: [export.count desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: Non Compliant URLs, orientation: left, series: [{axisId: export.count,
            id: export.count, name: Count}], showLabels: true, showValues: true, maxValue: 500,
        minValue: 250, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Date
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    legend_position: center
    label_value_format: '0.0'
    series_types: {}
    point_style: none
    series_colors:
      export.avg_delay_total: "#9174F0"
      export.count: "#592EC2"
    series_labels:
      export.count: Count
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Crawl Date: export.partition_date
      Pagetype: export.pagetype
    row: 16
    col: 0
    width: 12
    height: 7
  - title: Average HTML Load Time vs Google Crawls
    name: Average HTML Load Time vs Google Crawls
    model: looker_botify
    explore: export
    type: looker_line
    fields: [export.avg_delay_total, export.partition_date, export.google_crawls_range,
      export.count]
    pivots: [export.google_crawls_range]
    filters:
      export.google_crawls_range: 1 or Above
    sorts: [export.partition_date, export.google_crawls_range 0]
    limit: 500
    query_timezone: America/Los_Angeles
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: ccba75a3-58c7-4b9c-a931-4ffc59e79cba
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: export.avg_delay_total,
            id: 1 or Above - 1 - export.avg_delay_total, name: Average HTML Load Time}],
        showLabels: true, showValues: true, maxValue: 2250, minValue: 1250, valueFormat: "#,##0\\\
          m\\s", unpinAxis: false, tickDensity: default, type: linear}, {label: '',
        orientation: right, series: [{axisId: export.count, id: 1 or Above - 1 - export.count,
            name: URLs Crawled by Google}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Date
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    label_value_format: '0.0'
    series_types:
      export.count: column
      1 or Above - 1 - export.count: column
    point_style: circle_outline
    series_colors:
      1 or Above - 1 - export.avg_delay_total: "#9174F0"
      1 or Above - 1 - export.count: "#ffe87a"
    series_labels:
      export.count: Count
      1 or Above - 1 - export.count: URLs Crawled by Google
      1 or Above - 1 - export.avg_delay_total: Average HTML Load Time
    show_value_labels: false
    label_density: 25
    x_axis_scale: ordinal
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Crawl Date: export.partition_date
    row: 23
    col: 12
    width: 12
    height: 6
  - title: Crawl History
    name: Crawl History
    model: looker_botify
    explore: export
    type: looker_grid
    fields: [export.partition_date, export.count, export.sum_no__of_crawls_from_google__logs_,
      export.sum_no__of_crawls_from_bing__logs_, export.sum_no__of_visits_from_organic_providers]
    filters:
      export.partition_date: 60 days
    sorts: [export.partition_date desc]
    limit: 500
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    series_labels:
      export.partition_date: Crawl Date
      export.count: URLs
      export.sum_no__of_crawls_from_google__logs_: Crawls from Google
      export.sum_no__of_crawls_from_bing__logs_: Crawls from Bing
      export.sum_no__of_visits_from_organic_providers: Organic Visits
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#462C9D",
        font_color: !!null '', color_application: {collection_id: 5b121cce-cf79-457c-a52a-9162dc174766,
          palette_id: 12809dc5-ac61-4801-8878-10c61fb43c60}, bold: false, italic: false,
        strikethrough: false, fields: [export.sum_no__of_visits_from_organic_providers]}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Pagetype: export.pagetype
    row: 29
    col: 0
    width: 24
    height: 6
  filters:
  - name: Crawl Date
    title: Crawl Date
    type: date_filter
    default_value: 60 days
    allow_multiple_values: true
    required: false
  - name: Pagetype
    title: Pagetype
    type: field_filter
    default_value: "-NULL"
    allow_multiple_values: true
    required: false
    model: looker_botify
    explore: export
    listens_to_filters: []
    field: export.pagetype
