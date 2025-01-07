WITH
    dataset AS (
        SELECT
            '1,2,3' AS col1,
            '1,2,3' AS col2
        UNION ALL
        SELECT '1,2,3', '4,5,6'
        UNION ALL
        SELECT '1,2,3', '1,2,4'
    )

SELECT
    *,
    (
        SELECT STRING_AGG(DISTINCT x ORDER BY x)
        FROM UNNEST(SPLIT(col1)) AS x
        WHERE x IN UNNEST(SPLIT(col2))
    ) AS set_intersection
FROM dataset
