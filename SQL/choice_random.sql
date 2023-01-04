-- ORACLE / TIBERO style
select
    choice_result.*
from
    (
        select
            cf.cook_name,
            cf.food_name
        from
            choice_food cf, choice_tag ct
        where
            /* none */
            1=1

            /* adding tag */
            cf.food_tag_code = ct.food_tag_code
            cf.food_tag_code = ('%s','%s','%s'....)

        order by
            dbms_random.random()

    ) choice_result
where
    rownum <=1;