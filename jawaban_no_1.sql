SELECT id, user_name, parent, (SELECT user_name FROM t_user WHERE id = tu.`parent` ) AS parent_name
FROM t_user AS tu