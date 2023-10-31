# The name of this view in Looker is "Train Data2"
view: train_data2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `sagar_choudhary.TRAIN DATA2` ;;
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: ad_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.ad_created_on ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Assured Buy" in Explore.

  dimension: assured_buy {
    type: yesno
    sql: ${TABLE}.assured_buy ;;
  }

  dimension: body_type {
    type: string
    sql: ${TABLE}.body_type ;;
  }

  dimension: booking_down_pymnt {
    type: number
    sql: ${TABLE}.booking_down_pymnt ;;
  }

  dimension: broker_quote {
    type: number
    sql: ${TABLE}.broker_quote ;;
  }

  dimension: car_availability {
    type: string
    sql: ${TABLE}.car_availability ;;
  }

  dimension: car_name {
    type: string
    sql: ${TABLE}.car_name ;;
  }

  dimension: car_rating {
    type: string
    sql: ${TABLE}.car_rating ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: emi_starts_from {
    type: number
    sql: ${TABLE}.emi_starts_from ;;
  }

  dimension: fitness_certificate {
    type: yesno
    sql: ${TABLE}.fitness_certificate ;;
  }

  dimension: fuel_type {
    type: string
    sql: ${TABLE}.fuel_type ;;
  }

  dimension: is_hot {
    type: yesno
    sql: ${TABLE}.is_hot ;;
  }

  dimension: kms_run {
    type: number
    sql: ${TABLE}.kms_run ;;
  }

  dimension: make {
    type: string
    sql: ${TABLE}.make ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: original_price {
    type: number
    sql: ${TABLE}.original_price ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_original_price {
    type: sum
    sql: ${original_price} ;;  }
  measure: average_original_price {
    type: average
    sql: ${original_price} ;;  }

  dimension: registered_city {
    type: string
    sql: ${TABLE}.registered_city ;;
  }

  dimension: registered_state {
    type: string
    sql: ${TABLE}.registered_state ;;
  }

  dimension: reserved {
    type: yesno
    sql: ${TABLE}.reserved ;;
  }

  dimension: rto {
    type: string
    sql: ${TABLE}.rto ;;
  }

  dimension: sale_price {
    type: number
    sql: ${TABLE}.sale_price ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: times_viewed {
    type: number
    sql: ${TABLE}.times_viewed ;;
  }

  dimension: total_owners {
    type: number
    sql: ${TABLE}.total_owners ;;
  }

  dimension: transmission {
    type: string
    sql: ${TABLE}.transmission ;;
  }

  dimension: variant {
    type: string
    sql: ${TABLE}.variant ;;
  }

  dimension: warranty_avail {
    type: yesno
    sql: ${TABLE}.warranty_avail ;;
  }

  dimension: yr_mfr {
    type: number
    sql: ${TABLE}.yr_mfr ;;
  }
  measure: count {
    type: count
    drill_fields: [id, car_name]
  }
}
