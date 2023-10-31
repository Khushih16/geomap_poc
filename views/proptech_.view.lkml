# The name of this view in Looker is "Proptech "
view: proptech_ {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `sagar_choudhary.proptech_` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Ac" in Explore.

  dimension: ac {
    type: string
    sql: ${TABLE}.AC ;;
  }

  dimension: assessment_nbhd {
    type: string
    sql: ${TABLE}.ASSESSMENT_NBHD ;;
  }

  dimension: assessment_subnbhd {
    type: string
    sql: ${TABLE}.ASSESSMENT_SUBNBHD ;;
  }

  dimension: ayb {
    type: number
    sql: ${TABLE}.AYB ;;
  }

  dimension: bathrm {
    type: number
    sql: ${TABLE}.BATHRM ;;
  }

  dimension: bedrm {
    type: number
    sql: ${TABLE}.BEDRM ;;
  }

  dimension: bldg_num {
    type: number
    sql: ${TABLE}.BLDG_NUM ;;
  }

  dimension: census_block {
    type: string
    sql: ${TABLE}.CENSUS_BLOCK ;;
  }

  dimension: census_tract {
    type: number
    sql: ${TABLE}.CENSUS_TRACT ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.CITY ;;
  }

  dimension: cmplx_num {
    type: string
    sql: ${TABLE}.CMPLX_NUM ;;
  }

  dimension: cndtn {
    type: string
    sql: ${TABLE}.CNDTN ;;
  }

  dimension: extwall {
    type: string
    sql: ${TABLE}.EXTWALL ;;
  }

  dimension: eyb {
    type: number
    sql: ${TABLE}.EYB ;;
  }

  dimension: fireplaces {
    type: number
    sql: ${TABLE}.FIREPLACES ;;
  }

  dimension: fulladdress {
    type: string
    sql: ${TABLE}.FULLADDRESS ;;
  }

  dimension: gba {
    type: number
    sql: ${TABLE}.GBA ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: gis_last_mod_dttm {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.GIS_LAST_MOD_DTTM ;;
  }

  dimension: grade {
    type: string
    sql: ${TABLE}.GRADE ;;
  }

  dimension: heat {
    type: string
    sql: ${TABLE}.HEAT ;;
  }

  dimension: hf_bathrm {
    type: number
    sql: ${TABLE}.HF_BATHRM ;;
  }

  dimension: intwall {
    type: string
    sql: ${TABLE}.INTWALL ;;
  }

  dimension: kitchens {
    type: number
    sql: ${TABLE}.KITCHENS ;;
  }

  dimension: landarea {
    type: number
    sql: ${TABLE}.LANDAREA ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.LATITUDE ;;
  }

  dimension: living_gba {
    type: string
    sql: ${TABLE}.LIVING_GBA ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.LONGITUDE ;;
  }

  dimension: nationalgrid {
    type: string
    sql: ${TABLE}.NATIONALGRID ;;
  }

  dimension: num_units {
    type: number
    sql: ${TABLE}.NUM_UNITS ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.PRICE ;;
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

  dimension: quadrant {
    type: string
    sql: ${TABLE}.QUADRANT ;;
  }

  dimension: qualified {
    type: string
    sql: ${TABLE}.QUALIFIED ;;
  }

  dimension: roof {
    type: string
    sql: ${TABLE}.ROOF ;;
  }

  dimension: rooms {
    type: number
    sql: ${TABLE}.ROOMS ;;
  }

  dimension: sale_num {
    type: number
    sql: ${TABLE}.SALE_NUM ;;
  }

  dimension_group: saledate {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.SALEDATE ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.SOURCE ;;
  }

  dimension: square {
    type: number
    sql: ${TABLE}.SQUARE ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.STATE ;;
  }

  dimension: stories {
    type: number
    sql: ${TABLE}.STORIES ;;
  }

  dimension: style {
    type: string
    sql: ${TABLE}.STYLE ;;
  }

  dimension: usecode {
    type: number
    sql: ${TABLE}.USECODE ;;
  }

  dimension: ward {
    type: string
    sql: ${TABLE}.WARD ;;
  }

  dimension: x {
    type: number
    sql: ${TABLE}.X ;;
  }

  dimension: y {
    type: number
    sql: ${TABLE}.Y ;;
  }

  dimension: yr_rmdl {
    type: number
    sql: ${TABLE}.YR_RMDL ;;
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}.ZIPCODE ;;
  }
  measure: count {
    type: count
  }
}
