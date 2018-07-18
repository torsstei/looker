view: station {
  sql_table_name: station ;;

  dimension: station_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.station_id ;;
  }

  dimension: current_dock_count {
    type: string
    sql: ${TABLE}.current_dock_count ;;
  }

  dimension: decommision_date {
    type: string
    sql: ${TABLE}.decommision_date ;;
  }

  dimension: install_date {
    type: string
    sql: ${TABLE}.install_date ;;
  }

  dimension: install_dock_count {
    type: string
    sql: ${TABLE}.install_dock_count ;;
  }

  dimension: latitude {
    hidden: yes
    type: string
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    hidden: yes
    type: string
    sql: ${TABLE}.longitude ;;
  }

  dimension: station_location {
    type: location
    sql_latitude: ${latitude} ;;
    sql_longitude: ${longitude} ;;
    link: {
      label: "Station Manager Dashboard"
      url: "https://ibm-wdai.looker.com/dashboards/7"
      icon_url: "http://www.looker.com/favicon.ico"
    }

    action: {
      label: "Re-route Bikes"
      url: "https://desolate-refuge-53336.herokuapp.com/posts"
      icon_url: "https://cdn.geekwire.com/wp-content/uploads/2014/05/bikeshare.jpeg"
      param: {
        name: "some_auth_code"
        value: "abc123456"
      }
      form_param: {
        name: "From"
        required: yes
        default: "{{ station_id._value }}"
      }
      form_param: {
        name: "To"
        required: yes
      }
      form_param: {
        name: "Amount"
        required: yes
      }
    }
    action: {
      label: "Launch Dropoff Campaign"
      url: "https://desolate-refuge-53336.herokuapp.com/posts"
      icon_url: "https://sendgrid.com/favicon.ico"
      param: {
        name: "some_auth_code"
        value: "abc123456"
      }
      form_param: {
        name: "Subject"
        required: yes
        default: "Special Bike Ride Offer - dropoff at {{station.name}}"
      }
      form_param: {
        name: "To Mailing List"
        required: yes
      }
      form_param: {
        name: "Body"
        type: textarea
        required: yes
        default:
        "Dear Seattle Bike Share Member,

        We are having a special bike share promotion today.
        If you return a bike to {{station.name}} before the end of the day today, your trip is free!

        Happy biking!
        Seattle Bike Share"
      }
    }

    action: {
      label: "Launch Pickup Campaign"
      url: "https://desolate-refuge-53336.herokuapp.com/posts"
      icon_url: "https://sendgrid.com/favicon.ico"
      param: {
        name: "some_auth_code"
        value: "abc123456"
      }
      form_param: {
        name: "Subject"
        required: yes
        default: "Special Bike Ride Offer - pickup at {{station.name}}"
      }
      form_param: {
        name: "To Mailing List"
        required: yes
      }
      form_param: {
        name: "Body"
        type: textarea
        required: yes
        default:
        "Dear Seattle Bike Share Member,

        We are having a special bike share promotion today.
        If you pickup a bike at {{station.name}} and return to a different station before the end of the day today, your trip is free!
        Happy biking!
        Seattle Bike Share"
      }
    }
    required_fields: [name]
  }

  dimension: modification_date {
    type: string
    sql: ${TABLE}.modification_date ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
    link: {
      label: "Station Manager Dashboard"
      url: "https://ibm-wdai.looker.com/dashboards/7"
      icon_url: "http://www.looker.com/favicon.ico"
    }
    link: {
      label: "Street View of Station"
      url: "http://maps.google.com/maps?q=&layer=c&cbll={{latitude._value}},{{longitude._value}}"
      icon_url: "http://maps.google.com/mapfiles/ms/icons/blue.png"
    }

    action: {
      label: "Re-route Bikes"
      url: "https://desolate-refuge-53336.herokuapp.com/posts"
      icon_url: "https://cdn.geekwire.com/wp-content/uploads/2014/05/bikeshare.jpeg"
      param: {
        name: "some_auth_code"
        value: "abc123456"
      }
      form_param: {
        name: "From"
        required: yes
        default: "{{ name._value }}"
      }
      form_param: {
        name: "To"
        required: yes
      }
      form_param: {
        name: "Amount"
        required: yes
      }
    }
    action: {
      label: "Launch Dropoff Campaign"
      url: "https://desolate-refuge-53336.herokuapp.com/posts"
      icon_url: "https://sendgrid.com/favicon.ico"
      param: {
        name: "some_auth_code"
        value: "abc123456"
      }
      form_param: {
        name: "Subject"
        required: yes
        default: "Special Bike Ride Offer - dropoff at {{station.name}}"
      }
      form_param: {
        name: "To Mailing List"
        required: yes
      }
      form_param: {
        name: "Body"
        type: textarea
        required: yes
        default:
        "Dear Seattle Bike Share Member,

        We are having a special bike share promotion today.
        If you return a bike to {{station.name}} before the end of the day today, your trip is free!

        Happy biking!
        Seattle Bike Share"
      }
    }

    action: {
      label: "Launch Pickup Campaign"
      url: "https://desolate-refuge-53336.herokuapp.com/posts"
      icon_url: "https://sendgrid.com/favicon.ico"
      param: {
        name: "some_auth_code"
        value: "abc123456"
      }
      form_param: {
        name: "Subject"
        required: yes
        default: "Special Bike Ride Offer - pickup at {{station.name}}"
      }
      form_param: {
        name: "To Mailing List"
        required: yes
      }
      form_param: {
        name: "Body"
        type: textarea
        required: yes
        default:
        "Dear Seattle Bike Share Member,

        We are having a special bike share promotion today.
        If you pickup a bike at {{station.name}} and return to a different station before the end of the day today, your trip is free!
        Happy biking!
        Seattle Bike Share"
      }
    }
    required_fields: [name]
  }

  measure: count {
    type: count
    drill_fields: [station_id, name]
  }
}
