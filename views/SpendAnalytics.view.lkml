view: Vendor_Spend{
  derived_table: {
    sql:
      SELECT
        1001 AS vendor_id, 'Vendor 1' AS vendor_name, 484 AS spend
      UNION ALL
      SELECT
        1002 AS vendor_id, 'Vendor 2' AS vendor_name, 555 AS spend
      UNION ALL
      SELECT
        1003 AS vendor_id, 'Vendor 3' AS vendor_name, 141 AS spend
      UNION ALL
      SELECT
        1004 AS vendor_id, 'Vendor 4' AS vendor_name, 132 AS spend
      UNION ALL
      SELECT
        1005 AS vendor_id, 'Vendor 5' AS vendor_name, 583 AS spend
      UNION ALL
      SELECT
        1006 AS vendor_id, 'Vendor 6' AS vendor_name, 991 AS spend
      UNION ALL
      SELECT
        1007 AS vendor_id, 'Vendor 7' AS vendor_name, 141 AS spend
      UNION ALL
      SELECT
        1008 AS vendor_id, 'Vendor 8' AS vendor_name, 456 AS spend
      UNION ALL
      SELECT
        1009 AS vendor_id, 'Vendor 9' AS vendor_name, 408 AS spend
      UNION ALL
      SELECT
        1010 AS vendor_id, 'Vendor 10' AS vendor_name, 658 AS spend

      ;;
  }

  dimension: vendor_id {
    type: number
    sql: ${TABLE}.vendor_id ;;
  }

  dimension: vendor_name {
    type: string
    sql: ${TABLE}.vendor_name ;;
  }

  dimension: spend {
    type: number
    sql: ${TABLE}.spend ;;
  }

  measure: count {
    type: count
  }
}

view: Portfolio{
  derived_table: {
    sql:
      SELECT
        1001 AS portfolio_id, 'IT' AS portfolio_name, 590 AS spend
      UNION ALL
      SELECT
        1002 AS portfolio_id, 'Consulting' AS portfolio_name, 170 AS spend
      UNION ALL
      SELECT
        1003 AS portfolio_id, 'HR' AS portfolio_name, 437 AS spend
      UNION ALL
      SELECT
        1004 AS portfolio_id, 'BPO' AS portfolio_name, 862 AS spend
      UNION ALL
      SELECT
        1005 AS portfolio_id, 'Marketing' AS portfolio_name, 570 AS spend
      UNION ALL
      SELECT
        1006 AS portfolio_id, 'Digital' AS portfolio_name, 199 AS spend

      ;;
  }

  dimension: portfolio_id {
    type: number
    sql: ${TABLE}.portfolio_id ;;
  }

  dimension: portfolio_name {
    type: string
    sql: ${TABLE}.portfolio_name ;;
  }

  dimension: spend {
    type: number
    sql: ${TABLE}.spend ;;
  }

  measure: count {
    type: count
  }
}

view: KPI_Card{
  derived_table: {
    sql:
      SELECT
        436346 AS total_spend, 46424 AS total_vendors, 245 AS service_levels, 45 AS risks, 7 AS contract_changes, 4 AS service_level_exceptions

      ;;
  }

  dimension: total_spend {
    type: number
    sql: ${TABLE}.total_spend ;;
  }

  dimension: total_vendors {
    type: number
    sql: ${TABLE}.total_vendors ;;
  }

  dimension: service_levels {
    type: number
    sql: ${TABLE}.service_levels ;;
  }

  dimension: risks {
    type: number
    sql: ${TABLE}.risks ;;
  }

  dimension: contract_changes {
    type: number
    sql: ${TABLE}.contract_changes ;;
  }

  dimension: service_level_exceptions {
    type: number
    sql: ${TABLE}.service_level_exceptions ;;
  }

  measure: count {
    type: count
  }
}

view: Geo_Map{
  derived_table: {
    sql:
      SELECT
        'Afghanistan' AS country, 4669 AS spend
      UNION ALL
      SELECT
        'Albania' AS country, 2672 AS spend
      UNION ALL
      SELECT
        'Algeria' AS country, 8934 AS spend
      UNION ALL
      SELECT
        'Andorra' AS country, 1059 AS spend
      UNION ALL
      SELECT
        'Angola' AS country, 7971 AS spend
      UNION ALL
      SELECT
        'Antigua and Barbuda' AS country, 8432 AS spend
      UNION ALL
      SELECT
        'Argentina' AS country, 9845 AS spend
      UNION ALL
      SELECT
        'Armenia' AS country, 6835 AS spend
      UNION ALL
      SELECT
        'Australia' AS country, 8492 AS spend
      UNION ALL
      SELECT
        'Austria' AS country, 5700 AS spend
      UNION ALL
      SELECT
        'Azerbaijan' AS country, 3271 AS spend
      UNION ALL
      SELECT
        'The Bahamas' AS country, 5816 AS spend
      UNION ALL
      SELECT
        'Bahrain' AS country, 4905 AS spend
      UNION ALL
      SELECT
        'Bangladesh' AS country, 4819 AS spend
      UNION ALL
      SELECT
        'Barbados' AS country, 8922 AS spend
      UNION ALL
      SELECT
        'Belarus' AS country, 8733 AS spend
      UNION ALL
      SELECT
        'Belgium' AS country, 5854 AS spend
      UNION ALL
      SELECT
        'Belize' AS country, 6827 AS spend
      UNION ALL
      SELECT
        'Benin' AS country, 8605 AS spend
      UNION ALL
      SELECT
        'Bhutan' AS country, 4899 AS spend
      UNION ALL
      SELECT
        'Bolivia' AS country, 7978 AS spend
      UNION ALL
      SELECT
        'Bosnia and Herzegovina' AS country, 1635 AS spend
      UNION ALL
      SELECT
        'Botswana' AS country, 3000 AS spend
      UNION ALL
      SELECT
        'Brazil' AS country, 9882 AS spend
      UNION ALL
      SELECT
        'Brunei' AS country, 9683 AS spend
      UNION ALL
      SELECT
        'Bulgaria' AS country, 4755 AS spend
      UNION ALL
      SELECT
        'Burkina Faso' AS country, 5654 AS spend
      UNION ALL
      SELECT
        'Burundi' AS country, 7118 AS spend
      UNION ALL
      SELECT
        'Cambodia' AS country, 1638 AS spend
      UNION ALL
      SELECT
        'Cameroon' AS country, 1308 AS spend
      UNION ALL
      SELECT
        'Canada' AS country, 1893 AS spend
      UNION ALL
      SELECT
        'Cape Verde' AS country, 6299 AS spend
      UNION ALL
      SELECT
        'Central African Republic' AS country, 1798 AS spend
      UNION ALL
      SELECT
        'Chad' AS country, 5761 AS spend
      UNION ALL
      SELECT
        'Chile' AS country, 7409 AS spend
      UNION ALL
      SELECT
        'China' AS country, 5422 AS spend
      UNION ALL
      SELECT
        'Colombia' AS country, 2188 AS spend
      UNION ALL
      SELECT
        'Comoros' AS country, 8197 AS spend
      UNION ALL
      SELECT
        'Congo, Republic of the' AS country, 6106 AS spend
      UNION ALL
      SELECT
        'Congo, Democratic Republic of the' AS country, 9308 AS spend
      UNION ALL
      SELECT
        'Costa Rica' AS country, 2383 AS spend
      UNION ALL
      SELECT
        'Cote d'Ivoire' AS country, 6236 AS spend
      UNION ALL
      SELECT
        'Croatia' AS country, 7785 AS spend
      UNION ALL
      SELECT
        'Cuba' AS country, 1096 AS spend
      UNION ALL
      SELECT
        'Cyprus' AS country, 5564 AS spend
      UNION ALL
      SELECT
        'Czech Republic' AS country, 3468 AS spend
      UNION ALL
      SELECT
        'Denmark' AS country, 3459 AS spend
      UNION ALL
      SELECT
        'Djibouti' AS country, 7191 AS spend
      UNION ALL
      SELECT
        'Dominica' AS country, 6421 AS spend
      UNION ALL
      SELECT
        'Dominican Republic' AS country, 3718 AS spend
      UNION ALL
      SELECT
        'East Timor (Timor-Leste)' AS country, 8973 AS spend
      UNION ALL
      SELECT
        'Ecuador' AS country, 1438 AS spend
      UNION ALL
      SELECT
        'Egypt' AS country, 8859 AS spend
      UNION ALL
      SELECT
        'El Salvador' AS country, 9331 AS spend
      UNION ALL
      SELECT
        'Equatorial Guinea' AS country, 6158 AS spend
      UNION ALL
      SELECT
        'Eritrea' AS country, 2982 AS spend
      UNION ALL
      SELECT
        'Estonia' AS country, 7272 AS spend
      UNION ALL
      SELECT
        'Ethiopia' AS country, 8919 AS spend
      UNION ALL
      SELECT
        'Fiji' AS country, 8257 AS spend
      UNION ALL
      SELECT
        'Finland' AS country, 2012 AS spend
      UNION ALL
      SELECT
        'France' AS country, 2479 AS spend
      UNION ALL
      SELECT
        'Gabon' AS country, 5810 AS spend
      UNION ALL
      SELECT
        'The Gambia' AS country, 5699 AS spend
      UNION ALL
      SELECT
        'Georgia' AS country, 1095 AS spend
      UNION ALL
      SELECT
        'Germany' AS country, 9304 AS spend
      UNION ALL
      SELECT
        'Ghana' AS country, 7039 AS spend
      UNION ALL
      SELECT
        'Greece' AS country, 8030 AS spend
      UNION ALL
      SELECT
        'Grenada' AS country, 8980 AS spend
      UNION ALL
      SELECT
        'Guatemala' AS country, 1521 AS spend
      UNION ALL
      SELECT
        'Guinea' AS country, 1490 AS spend
      UNION ALL
      SELECT
        'Guinea-Bissau' AS country, 5964 AS spend
      UNION ALL
      SELECT
        'Guyana' AS country, 9527 AS spend
      UNION ALL
      SELECT
        'Haiti' AS country, 3542 AS spend
      UNION ALL
      SELECT
        'Honduras' AS country, 3090 AS spend
      UNION ALL
      SELECT
        'Hungary' AS country, 1776 AS spend
      UNION ALL
      SELECT
        'Iceland' AS country, 4527 AS spend
      UNION ALL
      SELECT
        'India' AS country, 2576 AS spend
      UNION ALL
      SELECT
        'Indonesia' AS country, 8309 AS spend
      UNION ALL
      SELECT
        'Iran' AS country, 8646 AS spend
      UNION ALL
      SELECT
        'Iraq' AS country, 4784 AS spend
      UNION ALL
      SELECT
        'Ireland' AS country, 4604 AS spend
      UNION ALL
      SELECT
        'Israel' AS country, 6400 AS spend
      UNION ALL
      SELECT
        'Italy' AS country, 5230 AS spend
      UNION ALL
      SELECT
        'Jamaica' AS country, 1128 AS spend
      UNION ALL
      SELECT
        'Japan' AS country, 9925 AS spend
      UNION ALL
      SELECT
        'Jordan' AS country, 3839 AS spend
      UNION ALL
      SELECT
        'Kazakhstan' AS country, 5025 AS spend
      UNION ALL
      SELECT
        'Kenya' AS country, 6668 AS spend
      UNION ALL
      SELECT
        'Kiribati' AS country, 6793 AS spend
      UNION ALL
      SELECT
        'Korea, North' AS country, 4586 AS spend
      UNION ALL
      SELECT
        'Korea, South' AS country, 9751 AS spend
      UNION ALL
      SELECT
        'Kosovo' AS country, 5880 AS spend
      UNION ALL
      SELECT
        'Kuwait' AS country, 5540 AS spend
      UNION ALL
      SELECT
        'Kyrgyzstan' AS country, 6200 AS spend
      UNION ALL
      SELECT
        'Laos' AS country, 9174 AS spend
      UNION ALL
      SELECT
        'Latvia' AS country, 8998 AS spend
      UNION ALL
      SELECT
        'Lebanon' AS country, 5663 AS spend
      UNION ALL
      SELECT
        'Lesotho' AS country, 5565 AS spend
      UNION ALL
      SELECT
        'Liberia' AS country, 5365 AS spend
      UNION ALL
      SELECT
        'Libya' AS country, 6330 AS spend
      UNION ALL
      SELECT
        'Liechtenstein' AS country, 1952 AS spend
      UNION ALL
      SELECT
        'Lithuania' AS country, 3810 AS spend
      UNION ALL
      SELECT
        'Luxembourg' AS country, 5600 AS spend
      UNION ALL
      SELECT
        'Macedonia' AS country, 2749 AS spend
      UNION ALL
      SELECT
        'Madagascar' AS country, 4894 AS spend
      UNION ALL
      SELECT
        'Malawi' AS country, 9734 AS spend
      UNION ALL
      SELECT
        'Malaysia' AS country, 3348 AS spend
      UNION ALL
      SELECT
        'Maldives' AS country, 7206 AS spend
      UNION ALL
      SELECT
        'Mali' AS country, 5665 AS spend
      UNION ALL
      SELECT
        'Malta' AS country, 3548 AS spend
      UNION ALL
      SELECT
        'Marshall Islands' AS country, 1117 AS spend
      UNION ALL
      SELECT
        'Mauritania' AS country, 2935 AS spend
      UNION ALL
      SELECT
        'Mauritius' AS country, 4889 AS spend
      UNION ALL
      SELECT
        'Mexico' AS country, 2563 AS spend
      UNION ALL
      SELECT
        'Micronesia, Federated States of' AS country, 5560 AS spend
      UNION ALL
      SELECT
        'Moldova' AS country, 9838 AS spend
      UNION ALL
      SELECT
        'Monaco' AS country, 6836 AS spend
      UNION ALL
      SELECT
        'Mongolia' AS country, 3900 AS spend
      UNION ALL
      SELECT
        'Montenegro' AS country, 5233 AS spend
      UNION ALL
      SELECT
        'Morocco' AS country, 5083 AS spend
      UNION ALL
      SELECT
        'Mozambique' AS country, 6826 AS spend
      UNION ALL
      SELECT
        'Myanmar (Burma)' AS country, 4436 AS spend
      UNION ALL
      SELECT
        'Namibia' AS country, 7686 AS spend
      UNION ALL
      SELECT
        'Nauru' AS country, 1280 AS spend
      UNION ALL
      SELECT
        'Nepal' AS country, 4875 AS spend
      UNION ALL
      SELECT
        'Netherlands' AS country, 7443 AS spend
      UNION ALL
      SELECT
        'New Zealand' AS country, 9882 AS spend
      UNION ALL
      SELECT
        'Nicaragua' AS country, 4332 AS spend
      UNION ALL
      SELECT
        'Niger' AS country, 7403 AS spend
      UNION ALL
      SELECT
        'Nigeria' AS country, 4278 AS spend
      UNION ALL
      SELECT
        'Norway' AS country, 6872 AS spend
      UNION ALL
      SELECT
        'Oman' AS country, 3218 AS spend
      UNION ALL
      SELECT
        'Pakistan' AS country, 7208 AS spend
      UNION ALL
      SELECT
        'Palau' AS country, 3445 AS spend
      UNION ALL
      SELECT
        'Panama' AS country, 2833 AS spend
      UNION ALL
      SELECT
        'Papua New Guinea' AS country, 7776 AS spend
      UNION ALL
      SELECT
        'Paraguay' AS country, 6953 AS spend
      UNION ALL
      SELECT
        'Peru' AS country, 8554 AS spend
      UNION ALL
      SELECT
        'Philippines' AS country, 7122 AS spend
      UNION ALL
      SELECT
        'Poland' AS country, 1136 AS spend
      UNION ALL
      SELECT
        'Portugal' AS country, 9219 AS spend
      UNION ALL
      SELECT
        'Qatar' AS country, 9004 AS spend
      UNION ALL
      SELECT
        'Romania' AS country, 9141 AS spend
      UNION ALL
      SELECT
        'Russia' AS country, 6745 AS spend
      UNION ALL
      SELECT
        'Rwanda' AS country, 6361 AS spend
      UNION ALL
      SELECT
        'Saint Kitts and Nevis' AS country, 9485 AS spend
      UNION ALL
      SELECT
        'Saint Lucia' AS country, 2167 AS spend
      UNION ALL
      SELECT
        'Saint Vincent and the Grenadines' AS country, 5376 AS spend
      UNION ALL
      SELECT
        'Samoa' AS country, 3376 AS spend
      UNION ALL
      SELECT
        'San Marino' AS country, 5605 AS spend
      UNION ALL
      SELECT
        'Sao Tome and Principe' AS country, 5092 AS spend
      UNION ALL
      SELECT
        'Saudi Arabia' AS country, 5150 AS spend
      UNION ALL
      SELECT
        'Senegal' AS country, 3914 AS spend
      UNION ALL
      SELECT
        'Serbia' AS country, 5366 AS spend
      UNION ALL
      SELECT
        'Seychelles' AS country, 6432 AS spend
      UNION ALL
      SELECT
        'Sierra Leone' AS country, 1120 AS spend
      UNION ALL
      SELECT
        'Singapore' AS country, 1833 AS spend
      UNION ALL
      SELECT
        'Slovakia' AS country, 3976 AS spend
      UNION ALL
      SELECT
        'Slovenia' AS country, 8479 AS spend
      UNION ALL
      SELECT
        'Solomon Islands' AS country, 9996 AS spend
      UNION ALL
      SELECT
        'Somalia' AS country, 5206 AS spend
      UNION ALL
      SELECT
        'South Africa' AS country, 9912 AS spend
      UNION ALL
      SELECT
        'South Sudan' AS country, 8634 AS spend
      UNION ALL
      SELECT
        'Spain' AS country, 5694 AS spend
      UNION ALL
      SELECT
        'Sri Lanka' AS country, 3038 AS spend
      UNION ALL
      SELECT
        'Sudan' AS country, 1585 AS spend
      UNION ALL
      SELECT
        'Suriname' AS country, 3828 AS spend
      UNION ALL
      SELECT
        'Swaziland' AS country, 6080 AS spend
      UNION ALL
      SELECT
        'Sweden' AS country, 7089 AS spend
      UNION ALL
      SELECT
        'Switzerland' AS country, 2193 AS spend
      UNION ALL
      SELECT
        'Syria' AS country, 2684 AS spend
      UNION ALL
      SELECT
        'Taiwan' AS country, 8221 AS spend
      UNION ALL
      SELECT
        'Tajikistan' AS country, 10000 AS spend
      UNION ALL
      SELECT
        'Tanzania' AS country, 4532 AS spend
      UNION ALL
      SELECT
        'Thailand' AS country, 3326 AS spend
      UNION ALL
      SELECT
        'Togo' AS country, 4782 AS spend
      UNION ALL
      SELECT
        'Tonga' AS country, 5314 AS spend
      UNION ALL
      SELECT
        'Trinidad and Tobago' AS country, 4856 AS spend
      UNION ALL
      SELECT
        'Tunisia' AS country, 5721 AS spend
      UNION ALL
      SELECT
        'Turkey' AS country, 2082 AS spend
      UNION ALL
      SELECT
        'Turkmenistan' AS country, 9973 AS spend
      UNION ALL
      SELECT
        'Tuvalu' AS country, 9205 AS spend
      UNION ALL
      SELECT
        'Uganda' AS country, 9716 AS spend
      UNION ALL
      SELECT
        'Ukraine' AS country, 6810 AS spend
      UNION ALL
      SELECT
        'United Arab Emirates' AS country, 7023 AS spend
      UNION ALL
      SELECT
        'United Kingdom' AS country, 3160 AS spend
      UNION ALL
      SELECT
        'United States of America' AS country, 4298 AS spend
      UNION ALL
      SELECT
        'Uruguay' AS country, 4188 AS spend
      UNION ALL
      SELECT
        'Uzbekistan' AS country, 9492 AS spend
      UNION ALL
      SELECT
        'Vanuatu' AS country, 1485 AS spend
      UNION ALL
      SELECT
        'Vatican City (Holy See)' AS country, 5318 AS spend
      UNION ALL
      SELECT
        'Venezuela' AS country, 8382 AS spend
      UNION ALL
      SELECT
        'Vietnam' AS country, 3761 AS spend
      UNION ALL
      SELECT
        'Yemen' AS country, 2808 AS spend
      UNION ALL
      SELECT
        'Zambia' AS country, 9518 AS spend
      UNION ALL
      SELECT
        'Zimbabwe' AS country, 2614 AS spend

      ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }

  dimension: spend {
    type: number
    sql: ${TABLE}.spend ;;
  }

  measure: count {
    type: count
  }
}

view: TrendByCategory {
  derived_table: {
    sql:
      SELECT
        '2021-Q1' AS year_quarter, 'Active Directory' AS category_name, 776 AS spend
      UNION ALL
      SELECT
        '2020-Q1' AS year_quarter, 'Active Directory' AS category_name, 760 AS spend
      UNION ALL
      SELECT
        '2020-Q2' AS year_quarter, 'Active Directory' AS category_name, 659 AS spend
      UNION ALL
      SELECT
        '2020-Q3' AS year_quarter, 'Active Directory' AS category_name, 500 AS spend
      UNION ALL
      SELECT
        '2020-Q4' AS year_quarter, 'Active Directory' AS category_name, 761 AS spend
      UNION ALL
      SELECT
        '2019-Q1' AS year_quarter, 'Active Directory' AS category_name, 225 AS spend
      UNION ALL
      SELECT
        '2019-Q2' AS year_quarter, 'Active Directory' AS category_name, 955 AS spend
      UNION ALL
      SELECT
        '2019-Q3' AS year_quarter, 'Active Directory' AS category_name, 245 AS spend
      UNION ALL
      SELECT
        '2019-Q4' AS year_quarter, 'Active Directory' AS category_name, 618 AS spend
      UNION ALL
      SELECT
        '2021-Q1' AS year_quarter, 'Productivity' AS category_name, 651 AS spend
      UNION ALL
      SELECT
        '2020-Q1' AS year_quarter, 'Productivity' AS category_name, 805 AS spend
      UNION ALL
      SELECT
        '2020-Q2' AS year_quarter, 'Productivity' AS category_name, 887 AS spend
      UNION ALL
      SELECT
        '2020-Q3' AS year_quarter, 'Productivity' AS category_name, 229 AS spend
      UNION ALL
      SELECT
        '2020-Q4' AS year_quarter, 'Productivity' AS category_name, 759 AS spend
      UNION ALL
      SELECT
        '2019-Q1' AS year_quarter, 'Productivity' AS category_name, 762 AS spend
      UNION ALL
      SELECT
        '2019-Q2' AS year_quarter, 'Productivity' AS category_name, 514 AS spend
      UNION ALL
      SELECT
        '2019-Q3' AS year_quarter, 'Productivity' AS category_name, 980 AS spend
      UNION ALL
      SELECT
        '2019-Q4' AS year_quarter, 'Productivity' AS category_name, 837 AS spend
      UNION ALL
      SELECT
        '2021-Q1' AS year_quarter, 'Content Work' AS category_name, 611 AS spend
      UNION ALL
      SELECT
        '2020-Q1' AS year_quarter, 'Content Work' AS category_name, 847 AS spend
      UNION ALL
      SELECT
        '2020-Q2' AS year_quarter, 'Content Work' AS category_name, 321 AS spend
      UNION ALL
      SELECT
        '2020-Q3' AS year_quarter, 'Content Work' AS category_name, 417 AS spend
      UNION ALL
      SELECT
        '2020-Q4' AS year_quarter, 'Content Work' AS category_name, 876 AS spend
      UNION ALL
      SELECT
        '2019-Q1' AS year_quarter, 'Content Work' AS category_name, 286 AS spend
      UNION ALL
      SELECT
        '2019-Q2' AS year_quarter, 'Content Work' AS category_name, 266 AS spend
      UNION ALL
      SELECT
        '2019-Q3' AS year_quarter, 'Content Work' AS category_name, 509 AS spend
      UNION ALL
      SELECT
        '2019-Q4' AS year_quarter, 'Content Work' AS category_name, 671 AS spend
      UNION ALL
      SELECT
        '2021-Q1' AS year_quarter, 'Mobile' AS category_name, 861 AS spend
      UNION ALL
      SELECT
        '2020-Q1' AS year_quarter, 'Mobile' AS category_name, 779 AS spend
      UNION ALL
      SELECT
        '2020-Q2' AS year_quarter, 'Mobile' AS category_name, 177 AS spend
      UNION ALL
      SELECT
        '2020-Q3' AS year_quarter, 'Mobile' AS category_name, 420 AS spend
      UNION ALL
      SELECT
        '2020-Q4' AS year_quarter, 'Mobile' AS category_name, 381 AS spend
      UNION ALL
      SELECT
        '2019-Q1' AS year_quarter, 'Mobile' AS category_name, 666 AS spend
      UNION ALL
      SELECT
        '2019-Q2' AS year_quarter, 'Mobile' AS category_name, 485 AS spend
      UNION ALL
      SELECT
        '2019-Q3' AS year_quarter, 'Mobile' AS category_name, 173 AS spend
      UNION ALL
      SELECT
        '2019-Q4' AS year_quarter, 'Mobile' AS category_name, 633 AS spend
      UNION ALL
      SELECT
        '2021-Q1' AS year_quarter, 'Cloud' AS category_name, 773 AS spend
      UNION ALL
      SELECT
        '2020-Q1' AS year_quarter, 'Cloud' AS category_name, 875 AS spend
      UNION ALL
      SELECT
        '2020-Q2' AS year_quarter, 'Cloud' AS category_name, 150 AS spend
      UNION ALL
      SELECT
        '2020-Q3' AS year_quarter, 'Cloud' AS category_name, 325 AS spend
      UNION ALL
      SELECT
        '2020-Q4' AS year_quarter, 'Cloud' AS category_name, 274 AS spend
      UNION ALL
      SELECT
        '2019-Q1' AS year_quarter, 'Cloud' AS category_name, 209 AS spend
      UNION ALL
      SELECT
        '2019-Q2' AS year_quarter, 'Cloud' AS category_name, 806 AS spend
      UNION ALL
      SELECT
        '2019-Q3' AS year_quarter, 'Cloud' AS category_name, 728 AS spend
      UNION ALL
      SELECT
        '2019-Q4' AS year_quarter, 'Cloud' AS category_name, 1000 AS spend
      UNION ALL
      SELECT
        '2021-Q1' AS year_quarter, 'Hardware' AS category_name, 615 AS spend
      UNION ALL
      SELECT
        '2020-Q1' AS year_quarter, 'Hardware' AS category_name, 685 AS spend
      UNION ALL
      SELECT
        '2020-Q2' AS year_quarter, 'Hardware' AS category_name, 239 AS spend
      UNION ALL
      SELECT
        '2020-Q3' AS year_quarter, 'Hardware' AS category_name, 423 AS spend
      UNION ALL
      SELECT
        '2020-Q4' AS year_quarter, 'Hardware' AS category_name, 645 AS spend
      UNION ALL
      SELECT
        '2019-Q1' AS year_quarter, 'Hardware' AS category_name, 563 AS spend
      UNION ALL
      SELECT
        '2019-Q2' AS year_quarter, 'Hardware' AS category_name, 576 AS spend
      UNION ALL
      SELECT
        '2019-Q3' AS year_quarter, 'Hardware' AS category_name, 700 AS spend
      UNION ALL
      SELECT
        '2019-Q4' AS year_quarter, 'Hardware' AS category_name, 984 AS spend

      ;;
  }

  dimension: year_quarter {
    type: string
    sql: ${TABLE}.year_quarter ;;
  }

  dimension: category_name {
    type: string
    sql: ${TABLE}.category_name ;;
  }

  dimension: spend {
    type: number
    sql: ${TABLE}.spend ;;
  }

  measure: count {
    type: count
  }
}

view: SpendvsBudget{
  derived_table: {
    sql:
      SELECT
        '2021-Q1' AS year_quarter, 512 AS spend, '99.19%' AS budget
      UNION ALL
      SELECT
        '2020-Q1' AS year_quarter, 188 AS spend, '63.52%' AS budget
      UNION ALL
      SELECT
        '2020-Q2' AS year_quarter, 495 AS spend, '139.19%' AS budget
      UNION ALL
      SELECT
        '2020-Q3' AS year_quarter, 368 AS spend, '100.12%' AS budget
      UNION ALL
      SELECT
        '2020-Q4' AS year_quarter, 315 AS spend, '139.72%' AS budget
      UNION ALL
      SELECT
        '2019-Q1' AS year_quarter, 293 AS spend, '64.10%' AS budget
      UNION ALL
      SELECT
        '2019-Q2' AS year_quarter, 866 AS spend, '77.33%' AS budget
      UNION ALL
      SELECT
        '2019-Q3' AS year_quarter, 505 AS spend, '54.64%' AS budget
      UNION ALL
      SELECT
        '2019-Q4' AS year_quarter, 259 AS spend, '46.67%' AS budget

      ;;
  }

  dimension: year_quarter {
    type: string
    sql: ${TABLE}.year_quarter ;;
  }

  dimension: spend {
    type: number
    sql: ${TABLE}.spend ;;
  }

  dimension: budget {
    type: string
    sql: ${TABLE}.budget ;;
  }

  measure: count {
    type: count
  }
}
