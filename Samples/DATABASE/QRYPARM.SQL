SELECT *               
   FROM `Customers`    
 WHERE `Country`='[LISTQRY:Select `Country`   FROM `Customers`   
 GROUP BY `Country`:Select Country of Customers ]'
