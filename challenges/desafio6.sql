SELECT
  FORMAT(MIN(plans.price), 2) AS faturamento_minimo,
  FORMAT(MAX(plans.price), 2) AS faturamento_maximo,
  FORMAT(AVG(plans.price), 2) AS faturamento_medio,
  FORMAT(SUM(plans.price), 2) AS faturamento_total
FROM SpotifyClone.people
  INNER JOIN SpotifyClone.plans ON plans.id = people.plan_id
