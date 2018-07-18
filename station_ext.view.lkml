view: station_ext {
  sql_table_name: looker.station_ext ;;
  suggestions: no

  dimension: current_dockcount {
    type: number
    sql: ${TABLE}.current_dockcount ;;
  }

  dimension: decommission_date {
    type: string
    sql: ${TABLE}.decommission_date ;;
  }

  dimension: install_date {
    type: string
    sql: ${TABLE}.install_date ;;
  }

  dimension: install_dockcount {
    type: number
    sql: ${TABLE}.install_dockcount ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: long {
    type: number
    sql: ${TABLE}.long ;;
  }

  dimension: modification_date {
    type: string
    sql: ${TABLE}.modification_date ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: station_id {
    type: string
    sql: ${TABLE}.station_id ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
