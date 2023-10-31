# The name of this view in Looker is "Students"
view: students {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `sagar_choudhary.students` ;;
  drill_fields: [student_id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: student_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Student_ID ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Campus Location" in Explore.

  dimension: campus_location {
    type: string
    sql: ${TABLE}.Campus_location ;;
  }

  dimension: course_duration {
    type: number
    sql: ${TABLE}.Course_Duration ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_course_duration {
    type: sum
    sql: ${course_duration} ;;  }
  measure: average_course_duration {
    type: average
    sql: ${course_duration} ;;  }

  dimension: course_type {
    type: string
    sql: ${TABLE}.Course_Type ;;
  }

  dimension: email_address {
    type: string
    sql: ${TABLE}.Email_Address ;;
  }

  dimension: fees {
    type: number
    sql: ${TABLE}.Fees ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.Gender ;;
  }

  dimension: student_country {
    type: string
    sql: ${TABLE}.Student_Country ;;
  }

  dimension: student_name {
    type: string
    sql: ${TABLE}.Student_Name ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }
  measure: count {
    type: count
    drill_fields: [student_id, student_name]
  }
}
