# Define the database connection to be used for this model.
connection: "bigquery"

# include all the views
include: "/views/**/*.view"

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Prem Anand"

explore: billion_orders {
  join: orders {
    type: left_outer
    sql_on: ${billion_orders.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: all_types {}

explore: hundred_million_orders_wide {
  join: orders {
    type: left_outer
    sql_on: ${hundred_million_orders_wide.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: hundred_million_orders {
  join: orders {
    type: left_outer
    sql_on: ${hundred_million_orders.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: fatal_error_persist_for_five_seconds {}

explore: connection_reg_r3 {}

explore: fake_scratch__connection_reg_r3 {}

explore: billion_orders_wide {
  join: orders {
    type: left_outer
    sql_on: ${billion_orders_wide.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: looker_scratch__tst_reg_ebffc1deed5d25a581 {}

explore: mat_view_base_3317 {}

explore: mat_view_base_1247 {}

explore: mat_view_base_4309 {}

explore: mat_view_base_3890 {}

explore: looker_scratch__tst_reg_963fdcc02655d76f67 {}

explore: order_items {
  join: orders {
    type: left_outer
    sql_on: ${order_items.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: nested_and_repeated {
  join: nested_and_repeated__repeated_field {
    view_label: "Nested And Repeated: Repeated Field"
    sql: LEFT JOIN UNNEST(${nested_and_repeated.repeated_field}) as nested_and_repeated__repeated_field ;;
    relationship: one_to_many
  }

  join: nested_and_repeated__doubly_nested_and_repeated {
    view_label: "Nested And Repeated: Doubly Nested And Repeated"
    sql: LEFT JOIN UNNEST(${nested_and_repeated.doubly_nested_and_repeated}) as nested_and_repeated__doubly_nested_and_repeated ;;
    relationship: one_to_many
  }

  join: nested_and_repeated__doubly_nested_and_repeated__inner_repeated {
    view_label: "Nested And Repeated: Doubly Nested And Repeated Inner Repeated"
    sql: LEFT JOIN UNNEST(${nested_and_repeated__doubly_nested_and_repeated.inner_repeated}) as nested_and_repeated__doubly_nested_and_repeated__inner_repeated ;;
    relationship: one_to_many
  }
}

explore: testing_table_one {}

explore: orders_date_string {
  join: users {
    type: left_outer
    sql_on: ${orders_date_string.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders_date_string_test2 {
  join: users {
    type: left_outer
    sql_on: ${orders_date_string_test2.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders_base_copy {
  join: users {
    type: left_outer
    sql_on: ${orders_base_copy.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders {
  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: testme {}

explore: testing_table {}

explore: users {}

explore: vijaya_order_test {
  join: users {
    type: left_outer
    sql_on: ${vijaya_order_test.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}
