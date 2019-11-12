connection: "botify-uhnd"

# include all the views
include: "/views/**/*.view"

datagroup: uhnd_look_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: uhnd_look_default_datagroup


explore: export {
  conditionally_filter: {
    filters: {
      field: partition_date
      value: "1 day"
    }
    unless: [partition_date,partition_month_string]
  }
}
