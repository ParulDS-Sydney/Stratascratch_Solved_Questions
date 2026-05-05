SELECT COUNT(DISTINCT account_id) AS total_accounts_2016
FROM product_logins
WHERE login_date BETWEEN '2016-01-01' AND '2016-12-31';
