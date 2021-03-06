view: inventory_items {
  sql_table_name: "PUBLIC"."INVENTORY_ITEMS"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}."COST" ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_num,
      quarter,
      year
    ]
    sql: ${TABLE}."CREATED_AT" ;;
  }

  dimension: product_brand {
    type: string
    sql: ${TABLE}."PRODUCT_BRAND" ;;
  }

  dimension: product_category {
    type: string
    sql: ${TABLE}."PRODUCT_CATEGORY" ;;
  }

  dimension: product_department {
    type: string
    sql: ${TABLE}."PRODUCT_DEPARTMENT" ;;
  }

  dimension: product_distribution_center_id {
    type: number
    sql: ${TABLE}."PRODUCT_DISTRIBUTION_CENTER_ID" ;;
  }

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."PRODUCT_ID" ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."PRODUCT_NAME" ;;
  }

  dimension: product_retail_price {
    type: number
    sql: ${TABLE}."PRODUCT_RETAIL_PRICE" ;;
  }

  dimension: product_sku {
    type: string
    sql: ${TABLE}."PRODUCT_SKU" ;;
  }

  dimension_group: sold {
    type: time
    timeframes: [
      raw,
      time,
      date,
      day_of_week,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."SOLD_AT" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, product_name, products.id, products.name, order_items.count]
  }

  parameter: date_filter {
    type: date
  }

  measure: product_retail_price_year_to_selected_date {
    type: sum
    value_format: "#,##0.00"
    sql:
      CASE
        WHEN EXTRACT(YEAR FROM CAST({% parameter date_filter %} AS DATE)) = ${created_year}
        THEN ${TABLE}.PRODUCT_RETAIL_PRICE
      END ;;
  }

  measure: product_retail_month_to_selected_date {
    type: sum
    value_format: "#,##0.00"
    sql:
      CASE
        WHEN EXTRACT(MONTH FROM CAST({% parameter date_filter %} AS DATE)) = ${created_month_num}
        AND EXTRACT(YEAR FROM CAST({% parameter date_filter %} AS DATE)) = ${created_year}
        THEN ${TABLE}.PRODUCT_RETAIL_PRICE
      END ;;
  }

  dimension_group: created_new {
    type: time
    timeframes: [date, month, day_of_week, day_of_week_index]
    sql: ${TABLE}."CREATED_AT" ;;
  }

  dimension: until_today {
    type: yesno
    sql: ${created_new_day_of_week_index} <= DAYOFWEEK(CURRENT_DATE)-1 AND ${created_new_day_of_week_index} >= 0 ;;
  }
}
