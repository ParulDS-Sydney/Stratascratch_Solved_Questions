WITH vote_shares AS (
    SELECT 
        voter,
        candidate,
        1.0 / COUNT(*) OVER (PARTITION BY voter) AS split_vote
    FROM voting_results
    WHERE candidate IS NOT NULL
),
candidate_totals AS (
    SELECT 
        candidate,
        ROUND(SUM(split_vote)::numeric, 3) AS total_votes
    FROM vote_shares
    GROUP BY candidate
),
ranked_candidates AS (
    SELECT 
        candidate,
        DENSE_RANK() OVER (ORDER BY total_votes DESC) as rnk
    FROM candidate_totals
)
SELECT candidate
FROM ranked_candidates
WHERE rnk = 1;
