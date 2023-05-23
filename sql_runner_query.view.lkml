view: sql_runner_query {
  derived_table: {
    sql: SELECT
          `products`.`id` AS `products.id`,
          `products`.`brand` AS `products.brand`,
          COUNT(DISTINCT products.id ) AS `products.count`
      FROM
          `demo_db`.`inventory_items` AS `inventory_items`
          LEFT JOIN `demo_db`.`products` AS `products` ON `inventory_items`.`product_id` = `products`.`id`
      GROUP BY
          1,
          2
      ORDER BY
          COUNT(DISTINCT products.id ) DESC
      LIMIT 500
       ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [detail*]
  }

  dimension: products_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.`products.id` ;;
  }

  dimension: products_brand {
    type: string
    sql: ${TABLE}.`products.brand` ;;
  }

  dimension: products_count {
    type: number
    sql: ${TABLE}.`products.count` ;;
  }

  set: detail {
    fields: [products_id, products_brand, products_count]
  }
}
