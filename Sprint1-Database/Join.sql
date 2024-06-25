-- Reference
SELECT *
FROM address

-- Join two or more tables using a JOIN clause.
SELECT film.film_id, film.title, actor.first_name, actor.last_name
FROM film
INNER JOIN actor ON film.film_id = actor.actor_id;


-- 1. Retrieve Orders with Customer Information
SELECT Order.order_id, Customer.customer_name, Customer.address, Order.order_date, Order.total_amount
FROM Order 
INNER JOIN Customer ON Order.order_id = Customer.customer_id;

-- 2. Retrieve Order Items with Menu Item Details
SELECT orderItem.OrderItemID, orderItem.OrderID, Menu_Item.item_name, orderItem.quantity, orderItem.price
FROM orderItem
INNER JOIN orderItem ON Menu_Item.menu_item_id = orderItem.orderItemID;

-- 3. Retrieve Customer Information with Their Delivery Address
SELECT Customer.customer_id, Customer.customer_name, DeliveryAddress.AddressID
FROM Customer
INNER JOIN DeliveryAddress ON Customer.customer_id = DeliveryAddress.AddressID;

-- 4. Retrieve Menu Items with Their Ingredients
SELECT 
    mi.MenuItemID, 
    mi.Name AS MenuItemName, 
    i.Name AS IngredientName, 
    mii.QuantityUsed
FROM 
    Menu_Item mi
JOIN 
    Menu_Item_Ingredient mii ON mi.MenuItemID = mii.MenuItemID
JOIN 
    Ingredient i ON mii.IngredientID = i.IngredientID;

-- 5. Retrieve Orders with the Items Ordered by Each Customer
SELECT 
    c.Name AS CustomerName, 
    o.OrderID, 
    mi.Name AS MenuItemName, 
    oi.Quantity, 
    oi.Price
FROM 
    Customer c
JOIN 
    `Order` o ON c.CustomerID = o.CustomerID
JOIN 
    Order_Item oi ON o.OrderID = oi.OrderID
JOIN 
    Menu_Item mi ON oi.MenuItemID = mi.MenuItemID;

-- 6. Retrieve Sales Report with Best-Selling Menu Item Details
SELECT 
    sr.Date, 
    sr.Revenue, 
    sr.BestSellingItem, 
    mi.Description AS BestSellingItemDescription
FROM 
    Sales_Report sr
JOIN 
    Menu_Item mi ON sr.BestSellingItem = mi.Name;

-- 7. Retrieve Customers with Their Current Shopping Cart Items
SELECT 
    c.Name AS CustomerName, 
    sc.CartID, 
    mi.Name AS MenuItemName, 
    sc.Quantity
FROM 
    Customer c
JOIN 
    Shopping_Cart sc ON c.CustomerID = sc.CustomerID
JOIN 
    Menu_Item mi ON sc.MenuItemID = mi.MenuItemID;