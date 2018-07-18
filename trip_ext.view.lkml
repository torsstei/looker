view: trip_ext {
  sql_table_name: looker.trip_ext ;;
  suggestions: no

  dimension: bikeid {
    type: string
    sql: ${TABLE}.bikeid ;;
  }

  dimension: birthyear {
    type: string
    sql: ${TABLE}.birthyear ;;
  }

  dimension: from_station_id {
    type: string
    sql: ${TABLE}.from_station_id ;;
  }

  dimension: from_station_name {
    type: string
    sql: ${TABLE}.from_station_name ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: starttime {
    type: string
    sql: ${TABLE}.starttime ;;
  }

  dimension: stoptime {
    type: string
    sql: ${TABLE}.stoptime ;;
  }

  dimension: to_station_id {
    type: string
    sql: ${TABLE}.to_station_id ;;
  }

  dimension: to_station_name {
    type: string
    sql: ${TABLE}.to_station_name ;;
  }

  dimension: trip_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.trip_id ;;
  }

  dimension: tripduration {
    type: number
    sql: ${TABLE}.tripduration ;;
  }

  dimension: usertype {
    type: string
    sql: ${TABLE}.usertype ;;
  }

  measure: count {
    type: count
    drill_fields: [from_station_name, to_station_name, trip.trip_id, trip.from_station_name, trip.to_station_name]
  }
}
