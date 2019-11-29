SELECT item, menu_price, ingredient_cost,
       round(prep_time * 13.0 / 60.0, 2) AS labor,
       menu_price - ingredient_cost - round(prep_time * 13.0 / 60.0, 2) AS profit
  FROM menu_items
 ORDER BY profit DESC;