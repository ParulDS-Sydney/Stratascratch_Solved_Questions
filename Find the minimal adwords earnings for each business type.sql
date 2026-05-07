SELECT business_type, MIN(adwords_earnings) AS minimal_earning
FROM google_adwords_earnings
GROUP BY business_type;
