# Node.js & MySQL

## Overview of Bamazon

This activity required the creation of an Amazon-like storefront using a MySQL database to create and track inventory items. The app will take in orders from customers and deplete stock from the store's inventory.

## Package Dependencies
The following npm packages were required for data input, storage, and output display:
   * inquirer v6.4.1
   * mysql v2.17.1
   * cli-table v0.3.1

## Project Specifications
### MySQL Database
1. A MySQL Database called `bamazon` was created.

2. The `bamazon` database calls for the creation of a table named `products`. 

3. The `products` table contains product information under each of the following columns:
   * Item ID# (`item_id` -the unique id for each product; used to place orders)
   * Product Name (`product_name` -the name of product as it will appear to the user)
   * Department Name (`department_name` -the department category for the product)
   * Price ($) (`price` -the retail cost of each item to the customer)
   * In-Stock (`stock_quantity` -this number denotes the current in-stock availability for purchase by customers in our store)

4. The `bamazon` database is currently populated with 10 different items from a range of departments.


### CLI App
5. Then create a Node application called `bamazonCustomer.js`. Running this application will first display all of the items available for sale. Include the ids, names, and prices of products for sale.

6. The app should then prompt users with two messages.

   * The first should ask them the ID of the product they would like to buy.
   * The second message should ask how many units of the product they would like to buy.

7. Once the customer has placed the order, your application should check if your store has enough of the product to meet the customer's request.

   * If not, the app should log a phrase like `Insufficient quantity!`, and then prevent the order from going through.

8. However, if your store _does_ have enough of the product, you should fulfill the customer's order.
   * This means updating the SQL database to reflect the remaining quantity.
   * Once the update goes through, show the customer the total cost of their purchase.

- - -