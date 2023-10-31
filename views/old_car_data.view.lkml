# The name of this view in Looker is "Old Car Data"
view: old_car_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `sagar_choudhary.OLD CAR DATA` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Car Name" in Explore.

  dimension: car_name {
    type: string
    sql: ${TABLE}.car_name ;;
  }

  dimension: fuel_type {
    type: string
    sql: ${TABLE}.fuel_type ;;
  }

  dimension: km_driven {
    type: string
    sql: ${TABLE}.km_driven ;;
  }

  dimension: owner_type {
    type: string
    sql: ${TABLE}.owner_type ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_price {
    type: sum
    sql: ${price} ;;  }
  measure: average_price {
    type: average
    sql: ${price} ;;  }

  dimension: registeration {
    type: string
    sql: ${TABLE}.registeration ;;
  }

  dimension: transmission {
    type: string
    sql: ${TABLE}.transmission ;;
  }

  dimension: variant {
    type: string
    sql: ${TABLE}.variant ;;
  }
  measure: count {
    type: count
    drill_fields: [car_name]
  }
}
