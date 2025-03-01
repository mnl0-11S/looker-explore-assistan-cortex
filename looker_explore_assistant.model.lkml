connection: "looker_explore_assistant"

# # include all the views
include: "/Views/**/*.view.lkml"

datagroup: explore_assistant_vendorperform_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

# persist_with: explore_assistant_vendorperform_default_datagroup

named_value_format: Greek_Number_Format {
  value_format: "[>=1000000000]0.0,,,\"B\";[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0.0"
}

explore: vendor_performance {
  sql_always_where: ${vendor_performance.client_mandt} = '{{ _user_attributes['client_id_rep'] }}'
    and ${language_map.looker_locale}='es_ES'
    ;;

  join: language_map {
    fields: []
    type: left_outer
    sql_on: ${vendor_performance.language_key} = ${language_map.language_key} ;;
    relationship: many_to_one
  }

  join: materials_valuation_v2 {
    type: left_outer
    relationship: many_to_one
    sql_on: ${vendor_performance.client_mandt} = ${materials_valuation_v2.client_mandt}
          and ${vendor_performance.material_number} = ${materials_valuation_v2.material_number_matnr}
          and ${vendor_performance.plant} = ${materials_valuation_v2.valuation_area_bwkey}
          and ${vendor_performance.month_year} = ${materials_valuation_v2.month_year}
          and ${materials_valuation_v2.valuation_type_bwtar} = ''
          ;;
  }
}
