EXECUTE IMMEDIATE (
    SELECT
        STRING_AGG(
            FORMAT(
                """SELECT
                    '%s' AS column_name,
                    COUNT(%s) AS count_filled,
                    COUNT(%s) / COUNT(*) AS fill_rate,
                    COUNT(DISTINCT %s) AS cardinality
                FROM `your-project.your-dataset.your-table`
                """,
                column_name, column_name, column_name, column_name
            ), ' UNION ALL '
        )
    FROM `your-project.your-dataset.INFORMATION_SCHEMA.COLUMNS`
    WHERE table_name = 'your-table'
    AND column_name IN (
        'a_column_of_interest',
        'another_column_of_interest',
        'and_another_column_of_interest'
    )
)
