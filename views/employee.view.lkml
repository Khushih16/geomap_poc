# The name of this view in Looker is "Employee"
view: employee {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `sagar_choudhary.Employee` ;;
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "City Name" in Explore.

  dimension: city_name {
    type: string
    sql: ${TABLE}.City_Name ;;
  }

  dimension: conuntry_name {
    type: string
    sql: ${TABLE}.Conuntry_Name ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: doj {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DOJ ;;
  }

  dimension: email_address {
    type: string
    sql: ${TABLE}.Email_Address ;;
  }

  dimension: first_name_last_name {
    type: string
    sql: ${TABLE}.FirstName_LastName ;;
  }

  dimension: job_title {
    type: string
    sql: ${TABLE}.Job_Title ;;
  }

  dimension: salary {
    type: number
    sql: ${TABLE}.Salary ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_salary {
    type: sum
    sql: ${salary} ;;  }
  measure: average_salary {
    type: average
    sql: ${salary} ;;  }
  measure: count {
    type: count
    drill_fields: [id, conuntry_name, city_name, first_name_last_name]
  }
}
