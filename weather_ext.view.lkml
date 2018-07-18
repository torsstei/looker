view: weather_ext {
  sql_table_name: looker.weather_ext ;;
  suggestions: no

  dimension: date {
    type: string
    sql: ${TABLE}.`Date` ;;
  }

  dimension: events {
    type: string
    sql: ${TABLE}.Events ;;
  }

  dimension: max_dew_point_f {
    type: number
    sql: ${TABLE}.Max_Dew_Point_F ;;
  }

  dimension: max_gust_speed_mph {
    type: string
    sql: ${TABLE}.Max_Gust_Speed_MPH ;;
  }

  dimension: max_humidity {
    type: number
    sql: ${TABLE}.Max_Humidity ;;
  }

  dimension: max_sea_level_pressure_in {
    type: number
    sql: ${TABLE}.Max_Sea_Level_Pressure_In ;;
  }

  dimension: max_temperature_f {
    type: number
    sql: ${TABLE}.Max_Temperature_F ;;
  }

  dimension: max_visibility_miles {
    type: number
    sql: ${TABLE}.Max_Visibility_Miles ;;
  }

  dimension: max_wind_speed_mph {
    type: number
    sql: ${TABLE}.Max_Wind_Speed_MPH ;;
  }

  dimension: mean_dew_point_f {
    type: number
    sql: ${TABLE}.MeanDew_Point_F ;;
  }

  dimension: mean_humidity {
    type: number
    sql: ${TABLE}.Mean_Humidity ;;
  }

  dimension: mean_sea_level_pressure_in {
    type: number
    sql: ${TABLE}.Mean_Sea_Level_Pressure_In ;;
  }

  dimension: mean_temperature_f {
    type: number
    sql: ${TABLE}.Mean_Temperature_F ;;
  }

  dimension: mean_visibility_miles {
    type: number
    sql: ${TABLE}.Mean_Visibility_Miles ;;
  }

  dimension: mean_wind_speed_mph {
    type: number
    sql: ${TABLE}.Mean_Wind_Speed_MPH ;;
  }

  dimension: min_dewpoint_f {
    type: number
    sql: ${TABLE}.Min_Dewpoint_F ;;
  }

  dimension: min_humidity {
    type: number
    sql: ${TABLE}.Min_Humidity ;;
  }

  dimension: min_sea_level_pressure_in {
    type: number
    sql: ${TABLE}.Min_Sea_Level_Pressure_In ;;
  }

  dimension: min_temperature_f {
    type: number
    sql: ${TABLE}.Min_TemperatureF ;;
  }

  dimension: min_visibility_miles {
    type: number
    sql: ${TABLE}.Min_Visibility_Miles ;;
  }

  dimension: precipitation_in {
    type: number
    sql: ${TABLE}.Precipitation_In ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
