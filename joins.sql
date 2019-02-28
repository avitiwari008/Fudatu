-- Joins

-- Menus for cafe
Select Cafe_name, r.Recipee_Title  from Cafes as c
Inner Join menus as m
On c.Menu_id= m.Menu_id
Inner Join recipees as r
ON r.Recipee_id= m.Recipee_id;


Select Restaurant_name, r.Recipee_Title  from Restaurants as rs
Inner Join menus as m
On rs.Menu_id= m.Menu_id
Inner Join recipees as r
ON r.Recipee_id= m.Recipee_id;


-- Menus for restaurant
Select Restaurant_name, r.Recipee_Title  from Restaurants as rs
Inner Join menus as m
On rs.Menu_id= m.Menu_id
Inner Join recipees as r
ON r.Recipee_id= m.Recipee_id;


-- Menus for paarticular restaurant
Select Restaurant_name, r.Recipee_Title  from Restaurants as rs
Inner Join menus as m
On rs.Menu_id= m.Menu_id
Inner Join recipees as r
ON r.Recipee_id= m.Recipee_id
where rs.Restaurant_id='2'


