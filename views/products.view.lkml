view: products {
  sql_table_name: "PUBLIC"."PRODUCTS"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}."BRAND" ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}."CATEGORY" ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}."COST" ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}."DEPARTMENT" ;;
  }

  dimension: distribution_center_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."DISTRIBUTION_CENTER_ID" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}."RETAIL_PRICE" ;;
  }

  dimension: retail_price_tier {
    type: tier
    tiers: [0, 10, 20, 30, 40, 50, 60, 70, 80]
    style: relational
    sql: ${retail_price} ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}."SKU" ;;
  }
  measure:  profit {
    type:  number
    sql: ${retail_price} - ${cost} ;;
  }
  measure: markup_price {
    type:  number
    sql: ${retail_price} * 1.20 ;;
  }
  measure: count {
    type: count
    drill_fields: [id, name, distribution_centers.name, distribution_centers.id, inventory_items.count]
  }

  measure: category_count {
    type: sum
    sql:
    CASE
      WHEN ${category} = '{% parameter category_to_count %}'
      THEN 1
      ELSE 0
    END
  ;;
  }

  parameter: category_to_count {
    type: string}

  measure: total_retail_price {
    type: sum
    sql: ${retail_price} ;;
  }

  measure: count_of_non_allegra_k_order {
    type: count
    filters: {
      field: brand
      value: "-Allegra K"
    }
}
}
