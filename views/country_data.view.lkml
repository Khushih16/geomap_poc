# The name of this view in Looker is "Country Data"
view: country_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `sagar_choudhary.Country Data` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Int64 Field 10" in Explore.

  dimension: int64_field_10 {
    type: number
    sql: ${TABLE}.int64_field_10 ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_int64_field_10 {
    type: sum
    sql: ${int64_field_10} ;;  }
  measure: average_int64_field_10 {
    type: average
    sql: ${int64_field_10} ;;  }

  dimension: int64_field_11 {
    type: number
    sql: ${TABLE}.int64_field_11 ;;
  }

  dimension: int64_field_12 {
    type: number
    sql: ${TABLE}.int64_field_12 ;;
  }

  dimension: int64_field_13 {
    type: number
    sql: ${TABLE}.int64_field_13 ;;
  }

  dimension: int64_field_14 {
    type: number
    sql: ${TABLE}.int64_field_14 ;;
  }

  dimension: int64_field_15 {
    type: number
    sql: ${TABLE}.int64_field_15 ;;
  }

  dimension: int64_field_16 {
    type: number
    sql: ${TABLE}.int64_field_16 ;;
  }

  dimension: int64_field_17 {
    type: number
    sql: ${TABLE}.int64_field_17 ;;
  }

  dimension: int64_field_18 {
    type: number
    sql: ${TABLE}.int64_field_18 ;;
  }

  dimension: int64_field_19 {
    type: number
    sql: ${TABLE}.int64_field_19 ;;
  }

  dimension: int64_field_20 {
    type: number
    sql: ${TABLE}.int64_field_20 ;;
  }

  dimension: int64_field_21 {
    type: number
    sql: ${TABLE}.int64_field_21 ;;
  }

  dimension: int64_field_22 {
    type: number
    sql: ${TABLE}.int64_field_22 ;;
  }

  dimension: int64_field_23 {
    type: number
    sql: ${TABLE}.int64_field_23 ;;
  }

  dimension: int64_field_24 {
    type: number
    sql: ${TABLE}.int64_field_24 ;;
  }

  dimension: int64_field_25 {
    type: number
    sql: ${TABLE}.int64_field_25 ;;
  }

  dimension: int64_field_26 {
    type: number
    sql: ${TABLE}.int64_field_26 ;;
  }

  dimension: int64_field_27 {
    type: number
    sql: ${TABLE}.int64_field_27 ;;
  }

  dimension: int64_field_28 {
    type: number
    sql: ${TABLE}.int64_field_28 ;;
  }

  dimension: int64_field_29 {
    type: number
    sql: ${TABLE}.int64_field_29 ;;
  }

  dimension: int64_field_30 {
    type: number
    sql: ${TABLE}.int64_field_30 ;;
  }

  dimension: int64_field_31 {
    type: number
    sql: ${TABLE}.int64_field_31 ;;
  }

  dimension: int64_field_32 {
    type: number
    sql: ${TABLE}.int64_field_32 ;;
  }

  dimension: int64_field_33 {
    type: number
    sql: ${TABLE}.int64_field_33 ;;
  }

  dimension: int64_field_34 {
    type: number
    sql: ${TABLE}.int64_field_34 ;;
  }

  dimension: int64_field_35 {
    type: number
    sql: ${TABLE}.int64_field_35 ;;
  }

  dimension: int64_field_36 {
    type: number
    sql: ${TABLE}.int64_field_36 ;;
  }

  dimension: int64_field_37 {
    type: number
    sql: ${TABLE}.int64_field_37 ;;
  }

  dimension: int64_field_38 {
    type: number
    sql: ${TABLE}.int64_field_38 ;;
  }

  dimension: int64_field_39 {
    type: number
    sql: ${TABLE}.int64_field_39 ;;
  }

  dimension: int64_field_4 {
    type: number
    sql: ${TABLE}.int64_field_4 ;;
  }

  dimension: int64_field_40 {
    type: number
    sql: ${TABLE}.int64_field_40 ;;
  }

  dimension: int64_field_41 {
    type: number
    sql: ${TABLE}.int64_field_41 ;;
  }

  dimension: int64_field_42 {
    type: number
    sql: ${TABLE}.int64_field_42 ;;
  }

  dimension: int64_field_43 {
    type: number
    sql: ${TABLE}.int64_field_43 ;;
  }

  dimension: int64_field_44 {
    type: number
    sql: ${TABLE}.int64_field_44 ;;
  }

  dimension: int64_field_45 {
    type: number
    sql: ${TABLE}.int64_field_45 ;;
  }

  dimension: int64_field_46 {
    type: number
    sql: ${TABLE}.int64_field_46 ;;
  }

  dimension: int64_field_47 {
    type: number
    sql: ${TABLE}.int64_field_47 ;;
  }

  dimension: int64_field_48 {
    type: number
    sql: ${TABLE}.int64_field_48 ;;
  }

  dimension: int64_field_49 {
    type: number
    sql: ${TABLE}.int64_field_49 ;;
  }

  dimension: int64_field_5 {
    type: number
    sql: ${TABLE}.int64_field_5 ;;
  }

  dimension: int64_field_50 {
    type: number
    sql: ${TABLE}.int64_field_50 ;;
  }

  dimension: int64_field_51 {
    type: number
    sql: ${TABLE}.int64_field_51 ;;
  }

  dimension: int64_field_52 {
    type: number
    sql: ${TABLE}.int64_field_52 ;;
  }

  dimension: int64_field_53 {
    type: number
    sql: ${TABLE}.int64_field_53 ;;
  }

  dimension: int64_field_54 {
    type: number
    sql: ${TABLE}.int64_field_54 ;;
  }

  dimension: int64_field_55 {
    type: number
    sql: ${TABLE}.int64_field_55 ;;
  }

  dimension: int64_field_56 {
    type: number
    sql: ${TABLE}.int64_field_56 ;;
  }

  dimension: int64_field_57 {
    type: number
    sql: ${TABLE}.int64_field_57 ;;
  }

  dimension: int64_field_58 {
    type: number
    sql: ${TABLE}.int64_field_58 ;;
  }

  dimension: int64_field_59 {
    type: number
    sql: ${TABLE}.int64_field_59 ;;
  }

  dimension: int64_field_6 {
    type: number
    sql: ${TABLE}.int64_field_6 ;;
  }

  dimension: int64_field_60 {
    type: number
    sql: ${TABLE}.int64_field_60 ;;
  }

  dimension: int64_field_61 {
    type: number
    sql: ${TABLE}.int64_field_61 ;;
  }

  dimension: int64_field_62 {
    type: number
    sql: ${TABLE}.int64_field_62 ;;
  }

  dimension: int64_field_63 {
    type: number
    sql: ${TABLE}.int64_field_63 ;;
  }

  dimension: int64_field_64 {
    type: number
    sql: ${TABLE}.int64_field_64 ;;
  }

  dimension: int64_field_65 {
    type: number
    sql: ${TABLE}.int64_field_65 ;;
  }

  dimension: int64_field_7 {
    type: number
    sql: ${TABLE}.int64_field_7 ;;
  }

  dimension: int64_field_8 {
    type: number
    sql: ${TABLE}.int64_field_8 ;;
  }

  dimension: int64_field_9 {
    type: number
    sql: ${TABLE}.int64_field_9 ;;
  }

  dimension: string_field_0 {
    type: string
    sql: ${TABLE}.string_field_0 ;;
  }

  dimension: string_field_1 {
    type: string
    sql: ${TABLE}.string_field_1 ;;
  }

  dimension: string_field_2 {
    type: string
    sql: ${TABLE}.string_field_2 ;;
  }

  dimension: string_field_3 {
    type: string
    sql: ${TABLE}.string_field_3 ;;
  }

  dimension: string_field_66 {
    type: string
    sql: ${TABLE}.string_field_66 ;;
  }
  measure: count {
    type: count
  }
}
