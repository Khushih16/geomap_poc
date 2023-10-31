# The name of this view in Looker is "Indian Vehicle Details"
view: indian_vehicle_details {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `sagar_choudhary.Indian Vehicle Details` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Color" in Explore.

  dimension: color {
    type: string
    sql: ${TABLE}.Color ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.Company_Name ;;
  }

  dimension: drivetrain {
    type: string
    sql: ${TABLE}.Drivetrain ;;
  }

  dimension: engine {
    type: string
    sql: ${TABLE}.Engine ;;
  }

  dimension: fuel_tank_capacity {
    type: number
    sql: ${TABLE}.Fuel_Tank_Capacity ;;
  }

  dimension: fuel_type {
    type: string
    sql: ${TABLE}.Fuel_Type ;;
  }

  dimension: height {
    type: number
    sql: ${TABLE}.Height ;;
  }

  dimension: kilometer {
    type: number
    sql: ${TABLE}.Kilometer ;;
  }

  dimension: length {
    type: number
    sql: ${TABLE}.Length ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.Location ;;
  }

  dimension: max_power {
    type: string
    sql: ${TABLE}.Max_Power ;;
  }

  dimension: max_torque {
    type: string
    sql: ${TABLE}.Max_Torque ;;
  }

  dimension: model_name {
    type: string
    sql: ${TABLE}.Model_Name ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}.Owner ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.Price ;;
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

  dimension: seating_capacity {
    type: number
    sql: ${TABLE}.Seating_Capacity ;;
  }

  dimension: seller_type {
    type: string
    sql: ${TABLE}.Seller_Type ;;
  }

  dimension: transmission {
    type: string
    sql: ${TABLE}.Transmission ;;
  }

  dimension: width {
    type: number
    sql: ${TABLE}.Width ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }
  measure: count {
    type: count
    drill_fields: [model_name, company_name]
  }
}
