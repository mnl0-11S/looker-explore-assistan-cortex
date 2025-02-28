view: materials_valuation {
  sql_table_name: `co-grupoexito-sap-denodo-poc.REPORTING_PRD.MaterialsValuation` ;;

  dimension: client_mandt {
    type: string
    sql: ${TABLE}.Client_MANDT ;;
  }
  dimension: currency_key_waers {
    type: string
    sql: ${TABLE}.CurrencyKey_WAERS ;;
  }
  dimension: current_period_lfmon {
    type: string
    sql: ${TABLE}.CurrentPeriod_LFMON ;;
  }
  dimension_group: date_as_of_which_the_price_is_valid_zkdat {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DateAsOfWhichThePriceIsValid_ZKDAT ;;
  }
  dimension_group: date_of_the_last_price_change_laepr {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DateOfTheLastPriceChange_LAEPR ;;
  }
  dimension: deletion_flag_for_all_material_data_of_valuation_type_lvorm {
    type: string
    sql: ${TABLE}.DeletionFlagForAllMaterialDataOfValuationType_LVORM ;;
  }
  dimension: fiscal_year_of_current_period_lfgja {
    type: string
    sql: ${TABLE}.FiscalYearOfCurrentPeriod_LFGJA ;;
  }
  dimension: future_price_zkprs {
    type: number
    sql: ${TABLE}.FuturePrice_ZKPRS ;;
  }
  dimension: material_number_matnr {
    type: string
    sql: ${TABLE}.MaterialNumber_MATNR ;;
  }
  dimension: month_of_date_as_of_which_the_price_is_valid_zkdat {
    type: number
    sql: ${TABLE}.MonthOfDateAsOfWhichThePriceIsValid_ZKDAT ;;
  }
  dimension: month_of_date_of_the_last_price_change_laepr {
    type: number
    sql: ${TABLE}.MonthOfDateOfTheLastPriceChange_LAEPR ;;
  }
  dimension: moving_average_price_verpr {
    type: number
    sql: ${TABLE}.MovingAveragePrice_VERPR ;;
  }
  dimension: periodic_unit_price_verpr {
    type: number
    sql: ${TABLE}.PeriodicUnitPrice_VERPR ;;
  }
  dimension: previous_price_stprv {
    type: number
    sql: ${TABLE}.PreviousPrice_STPRV ;;
  }
  dimension: price_control_indicator_vprsv {
    type: string
    sql: ${TABLE}.PriceControlIndicator_VPRSV ;;
  }
  dimension: price_unit_peinh {
    type: number
    sql: ${TABLE}.PriceUnit_PEINH ;;
  }
  dimension: quarter_of_date_as_of_which_the_price_is_valid_zkdat {
    type: number
    sql: ${TABLE}.QuarterOfDateAsOfWhichThePriceIsValid_ZKDAT ;;
  }
  dimension: quarter_of_date_of_the_last_price_change_laepr {
    type: number
    sql: ${TABLE}.QuarterOfDateOfTheLastPriceChange_LAEPR ;;
  }
  dimension: standard_cost_stprs {
    type: number
    sql: ${TABLE}.StandardCost_STPRS ;;
  }
  dimension: standard_price_stprs {
    type: number
    sql: ${TABLE}.StandardPrice_STPRS ;;
  }
  dimension: total_valuated_stock_lbkum {
    type: number
    sql: ${TABLE}.TotalValuatedStock_LBKUM ;;
  }
  dimension: valuation_area_bwkey {
    type: string
    sql: ${TABLE}.ValuationArea_BWKEY ;;
  }
  dimension: valuation_category_bwtty {
    type: string
    sql: ${TABLE}.ValuationCategory_BWTTY ;;
  }
  dimension: valuation_class_bklas {
    type: string
    sql: ${TABLE}.ValuationClass_BKLAS ;;
  }
  dimension: valuation_type_bwtar {
    type: string
    sql: ${TABLE}.ValuationType_BWTAR ;;
  }
  dimension: value_of_total_valuated_stock_salk3 {
    type: number
    sql: ${TABLE}.ValueOfTotalValuatedStock_SALK3 ;;
  }
  dimension: week_of_date_as_of_which_the_price_is_valid_zkdat {
    type: number
    sql: ${TABLE}.WeekOfDateAsOfWhichThePriceIsValid_ZKDAT ;;
  }
  dimension: week_of_date_of_the_last_price_change_laepr {
    type: number
    sql: ${TABLE}.WeekOfDateOfTheLastPriceChange_LAEPR ;;
  }
  dimension: year_of_date_as_of_which_the_price_is_valid_zkdat {
    type: number
    sql: ${TABLE}.YearOfDateAsOfWhichThePriceIsValid_ZKDAT ;;
  }
  dimension: year_of_date_of_the_last_price_change_laepr {
    type: number
    sql: ${TABLE}.YearOfDateOfTheLastPriceChange_LAEPR ;;
  }
  measure: count {
    type: count
  }
}
