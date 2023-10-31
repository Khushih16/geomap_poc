# The name of this view in Looker is "Location Data"
view: location_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `sagar_choudhary.location_data` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "City" in Explore.

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: elev_m_ {
    type: number
    sql: ${TABLE}.Elev_m_ ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_elev_m_ {
    type: sum
    sql: ${elev_m_} ;;  }
  measure: average_elev_m_ {
    type: average
    sql: ${elev_m_} ;;  }

  dimension: gps {
    type: string
    sql: ${TABLE}.GPS ;;
  }

  dimension: k_w {
    type: number
    sql: ${TABLE}.kW ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: open {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Open_Date ;;
  }

  dimension: stalls {
    type: number
    sql: ${TABLE}.Stalls ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: street_address {
    type: string
    sql: ${TABLE}.Street_Address ;;
  }

  dimension: string_field_11 {
    type: string
    sql: ${TABLE}.string_field_11 ;;
  }

  dimension: supercharger {
    type: string
    sql: ${TABLE}.Supercharger ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.Zip ;;
  }
  measure: count {
    type: count
  }
}
