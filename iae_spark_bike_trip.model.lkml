connection: "iae_demo_db"

# include all the views
include: "*.view"

datagroup: iae_spark_bike_trip_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: iae_spark_bike_trip_default_datagroup
