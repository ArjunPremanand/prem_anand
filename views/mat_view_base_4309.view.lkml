# The name of this view in Looker is "Mat View Base 4309"
view: mat_view_base_4309 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_test.mat_view_base_4309`
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Fav String" in Explore.

  dimension: fav_string {
    type: string
    sql: ${TABLE}.fav_string ;;
  }

  dimension: is_working {
    type: yesno
    sql: ${TABLE}.is_working ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
