# The name of this view in Looker is "House Rent Data"
view: house_rent_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `sagar_choudhary.House Rent Data` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Area Locality" in Explore.

  dimension: area_locality {
    type: string
    sql: ${TABLE}.Area_Locality ;;
  }

  dimension: area_type {
    type: string
    sql: ${TABLE}.Area_Type ;;
  }

  dimension: bathroom {
    type: number
    sql: ${TABLE}.Bathroom ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_bathroom {
    type: sum
    sql: ${bathroom} ;;  }
  measure: average_bathroom {
    type: average
    sql: ${bathroom} ;;  }

  dimension: bhk {
    type: number
    sql: ${TABLE}.BHK ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: first_name_last_name {
    type: string
    sql: ${TABLE}.FirstName_LastName ;;
  }

  dimension: floor {
    type: string
    sql: ${TABLE}.Floor ;;
  }

  dimension: furnishing_status {
    type: string
    sql: ${TABLE}.Furnishing_Status ;;
  }

  dimension: point_of_contact {
    type: string
    sql: ${TABLE}.Point_of_Contact ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: posted {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Posted_On ;;
  }

  dimension: rent {
    type: number
    sql: ${TABLE}.Rent ;;
  }

  dimension: size {
    type: number
    sql: ${TABLE}.Size ;;
  }

  dimension: tenant_preferred {
    type: string
    sql: ${TABLE}.Tenant_Preferred ;;
  }
  measure: count {
    type: count
    drill_fields: [first_name_last_name]
  }
}
