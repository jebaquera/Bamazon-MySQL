var mysql = require("mysql");
var inquirer = require("inquirer");
var Table = require("cli-table");
require("dotenv").config();

// Connection information for the sql database
var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: process.env.DB_PASSWORD,
  database: "bamazon_db"
});

// Connect to the mysql server and sql database
connection.connect(function(err) {
  if (err) throw err;
  // run the displayPeroducts function after the connection is made to display the items to the user
  displayProducts();
});

// Running this application will begin by displaying all of the items available for sale: includes the id's, names, prices, and stock availability. 
var displayProducts = function(){
	var query = "Select * FROM products";
	connection.query(query, function(err, res){
		if(err) throw err;
		var displayTable = new Table ({
      head: ["Item ID#", "Product Name", "Department Name", "Price ($)", "In-Stock"],
			colWidths: [10,45,20,15,10]
		});
		for(var i = 0; i < res.length; i++){
			displayTable.push(
				[res[i].item_id,res[i].product_name, res[i].department_name, res[i].retail_price, res[i].stock_quantity]
			);
    }
		console.log(displayTable.toString());
		purchasePrompt();
  });
  // logs the actual query being run
  console.log(query.sql);
  connection.end();
}


// six - The app should then prompt users with two messages:
// item_id
// how many units of the product they would like to buy
function purchasePrompt() {
  inquirer.prompt([
    {
      name: "ID",
      type: "input",
      message: "Welcome to Bamazon. Please enter the Item ID# for the product that you would like to purchase.",
      filter: Number
    },

    {
      name: "Quantity",
      type: "input",
      message: "How many of these items would you like to purchase today?",
      filter: Number
    },
    
  ]).then(function(answers) {
      // Process the Item IDs and Quantity requested from user inputs
      var IDrequested = answers.ID;
      var quantityRequested = answers.Quantity;
      orderInvoice(IDrequested, quantityRequested);
  });
};


// seven - Once the customer has placed the order, your application should check if your store has enough of the product to meet the customer's request.
// --> IF NOT the app should log a phrase like 'Insufficient quantity!'
// --> AND prevent the order from going through




// eight - IF the store _does_ have enough of the product
// --> FULFILL the customer's order:
// Update the SQL Database to reflect the remaining quantity
// Once the update goes through, show the customer the TOTAL COST of their purchase.