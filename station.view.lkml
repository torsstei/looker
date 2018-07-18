view: station {
  sql_table_name: looker.station ;;
  suggestions: no

  dimension: to_station_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.to_station_id ;;
  }

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

  dimension: to_station_name {
    type: string
    sql: ${TABLE}.to_station_name ;;
  }

  dimension: trip_id {
    type: number
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
    drill_fields: [to_station_id, from_station_name, to_station_name]
  }
}
