project_name: "block-botify-seo-analytics"

constant: CONFIG_PROJECT_NAME {
  value: "block-botify-seo-analytics-config"
  export: override_required
}

constant: CONNECTION_NAME {
  value: "botify-uhnd"
  export: override_optional
}

constant: SCHEMA_NAME {
  value: "uhnd_exports"
  export: override_optional
}
