view: export {
  sql_table_name: `uhnd_exports.export_*` ;;

  dimension: partition_month_string {
    type: string
    sql: REGEXP_EXTRACT(_TABLE_SUFFIX,r'\d\d\d\d[A-Z][a-z][a-z]') ;;
  }

  dimension_group: partition {
    type: time
    sql: TIMESTAMP(PARSE_DATE('%Y%m%d', REGEXP_EXTRACT(_TABLE_SUFFIX,r'\d\d\d\d\d\d\d\d')))  ;;
  }

  dimension: comment_count {
    type: number
    hidden: yes
    group_label: "HTML Extracts"
    sql: ${TABLE}.Comment_Count ;;
  }

  measure: total_comment_count {
    type: sum
    group_label: "HTML Extracts"
    sql: ${comment_count} ;;
  }



  measure: count_inline_related_articles {
    type: number
    sql: ${TABLE}.Count_Inline_Related_Articles ;;
  }

  dimension_group: crawl {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Crawl_Date ;;
  }

  dimension_group: date_crawled {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Date_Crawled ;;
  }

  dimension: delay_first_byte_received {
    type: number
    hidden: yes
    sql: ${TABLE}.Delay_First_Byte_Received ;;
  }

  measure: avg_delay_first_byte_received {
    type: average
    value_format: "0"
    sql: ${delay_first_byte_received} ;;
  }

  dimension: delay_total {
    type: number
    hidden: yes
    sql: ${TABLE}.Delay_Total ;;
  }

  measure: avg_delay_total {
    type: average
    value_format: "0"
    sql: ${delay_total} ;;
  }

  dimension: depth {
    type: number
    sql: ${TABLE}.Depth ;;
  }

  dimension: depth_range {
    type: tier
    tiers: [0,1,2,3,4,5,6,7,8,9,10]
    style: integer
    sql: ${depth} ;;
  }

  dimension: google_crawls_range{
    type: tier
    tiers: [1,]
    style: integer
    sql: ${no__of_crawls_from_google__logs_} ;;
  }

  dimension: organic_visits_range{
    type: tier
    tiers: [1,]
    style: integer
    sql: ${no__of_visits_from_organic_providers} ;;
  }

  dimension: first_h1 {
    type: string
    group_label: "Meta Tags"
    sql: ${TABLE}.First_H1 ;;
  }

  dimension: full_url {
    type: string
    sql: ${TABLE}.Full_URL ;;
  }

  dimension: h2__json_ {
    type: string
    group_label: "Meta Tags"
    sql: ${TABLE}.H2__JSON_ ;;
  }

  dimension: h3__json_ {
    type: string
    group_label: "Meta Tags"
    sql: ${TABLE}.H3__JSON_ ;;
  }

  dimension: http_status_code {
    type: number
    sql: ${TABLE}.HTTP_Status_Code ;;
  }

  dimension: in_sitemap {
    type: yesno
    sql: ${TABLE}.In_Sitemap ;;
  }

  dimension: internal_pagerank {
    type: number
    hidden:  yes
    sql: ${TABLE}.Internal_Pagerank ;;
  }

  measure: sum_internal_pagerank {
    type: sum
    value_format: "0.0"
    sql: ${internal_pagerank} ;;
  }

  dimension: internal_pagerank_position {
    type: number
    sql: ${TABLE}.Internal_Pagerank_Position ;;
  }

  measure: avg_internal_pagerank_position {
    type: average
    value_format: "0.00"
    sql: ${internal_pagerank_position} ;;
  }

  dimension: is_compliant {
    type: yesno
    sql: ${TABLE}.Is_Compliant ;;
  }

  dimension: main_image_url {
    type: string
    sql: ${TABLE}.Main_Image_URL ;;
  }

  dimension: meta_description {
    type: string
    group_label: "Meta Tags"
    sql: ${TABLE}.Meta_Description ;;
  }

  dimension: no__of_crawls_from_bing__logs_ {
    type: number
    sql: ${TABLE}.No__of_Crawls_from_Bing__Logs_ ;;
  }

  measure: sum_no__of_crawls_from_bing__logs_ {
    type: sum
    sql: ${no__of_crawls_from_bing__logs_} ;;
  }

  dimension: no__of_crawls_from_google__logs_ {
    type: number
    hidden:  yes
    sql: ${TABLE}.No__of_Crawls_from_Google__Logs_ ;;
  }

  measure: sum_no__of_crawls_from_google__logs_ {
    type: sum
    sql: ${no__of_crawls_from_google__logs_} ;;
  }

  dimension: no__of_internal_follow_inlinks__from_distinct_urls_ {
    type: number
    hidden: yes
    sql: ${TABLE}.No__of_Internal_Follow_Inlinks__From_Distinct_URLs_ ;;
  }

  measure: sum_no__of_internal_follow_inlinks__from_distinct_urls_ {
    type: sum
    sql: ${no__of_internal_follow_inlinks__from_distinct_urls_} ;;
  }

  dimension: no__of_internal_follow_outlinks__to_distinct_urls_ {
    type: number
    hidden:  yes
    sql: ${TABLE}.No__of_Internal_Follow_Outlinks__to_Distinct_URLs_ ;;
  }

  measure: sum_no__of_internal_follow_outlinks__to_distinct_urls_ {
    type: sum
    sql: ${no__of_internal_follow_outlinks__to_distinct_urls_} ;;
  }

  dimension: no__of_internal_no_follow_outlinks__to_distinct_urls_ {
    type: number
    hidden:  yes
    sql: ${TABLE}.No__of_Internal_NoFollow_Outlinks__to_Distinct_URLs_ ;;
  }

  measure: sum_no__of_internal_no_follow_outlinks__to_distinct_urls_ {
    type: sum
    sql: ${no__of_internal_no_follow_outlinks__to_distinct_urls_} ;;
  }

  dimension: no__of_internal_outlinks__to_distinct_urls_ {
    type: number
    hidden:  yes
    sql: ${TABLE}.No__of_Internal_Outlinks__to_Distinct_URLs_ ;;
  }

  measure: sum_no__of_internal_outlinks__to_distinct_urls_ {
    type: sum
    sql: ${no__of_internal_outlinks__to_distinct_urls_};;
  }

  dimension: no__of_visits_from_organic_providers {
    type: number
    hidden: yes
    sql: ${TABLE}.No__of_Visits_from_Organic_Providers ;;
  }

  measure: sum_no__of_visits_from_organic_providers {
    type: sum
    sql: ${no__of_visits_from_organic_providers} ;;
  }

  dimension: no__of_visits_from_social_providers {
    type: number
    hidden: yes
    sql: ${TABLE}.No__of_Visits_from_Social_Providers ;;
  }

  measure: sum_no__of_visits_from_social_providers {
    type: sum
    sql: ${no__of_visits_from_social_providers} ;;
  }

  dimension: non_compliance_reason_is_bad_content_type {
    type: yesno
    group_label: "Non-Compliance Reasons"
    sql: ${TABLE}.Non_Compliance_Reason_is_Bad_Content_Type ;;
  }

  dimension: non_compliance_reason_is_noindex_status {
    type: yesno
    group_label: "Non-Compliance Reasons"
    sql: ${TABLE}.Non_Compliance_Reason_is_Noindex_Status ;;
  }

  dimension: non_compliance_reason_is_non_200_http_status_code {
    type: yesno
    group_label: "Non-Compliance Reasons"
    sql: ${TABLE}.Non_Compliance_Reason_is_Non_200_HTTP_Status_Code ;;
  }

  dimension: non_compliance_reason_is_non_self_canonical_tag {
    type: yesno
    group_label: "Non-Compliance Reasons"
    sql: ${TABLE}.Non_Compliance_Reason_is_Non_Self_Canonical_Tag ;;
  }

  dimension: pagetype {
    type: string
    sql: ${TABLE}.pagetype ;;
  }

  measure: post_count_in_archive {
    type: number
    group_label: "HTML Extracts"
    sql: ${TABLE}.Post_Count_in_Archive ;;
  }

  dimension: title {
    type: string
    group_label: "Meta Tags"
    sql: ${TABLE}.Title ;;
  }

  measure: count {
    type: count
    drill_fields: [full_url,http_status_code]
  }
}
