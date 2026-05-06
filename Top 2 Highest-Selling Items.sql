WITH ProductSales AS (
    SELECT 
        category,
        product_name,
        SUM(quantity) AS total_quantity_sold
    FROM 
        ecommerce_transactions
    GROUP BY 
        category, 
        product_name
),
RankedProducts AS (
    SELECT 
        category,
        product_name,
        total_quantity_sold,
        ROW_NUMBER() OVER (
            PARTITION BY category 
            ORDER BY total_quantity_sold DESC, product_name ASC
        ) AS rank_within_category
    FROM 
        ProductSales
)
SELECT 
    category,
    product_name,
    total_quantity_sold,
    rank_within_category
FROM 
    RankedProducts
WHERE 
    rank_within_category <= 2;
