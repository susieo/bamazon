var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "chocolate",
  database: "bamazon"
});
 
connection.connect(function(err) {
    if (err) throw err;
    readProducts();
    Promp();
  
  });
  

   function readProducts() {
    connection.query("SELECT item_id, product_name, price, stock_quantity FROM products", function(err, res) {
      if (err) throw err;
       console.log(res);
      
     //   connection.end();
    });
  }
  
  function Promp() {
    readProducts()  
    inquirer
      .prompt([
          {
        type: "input",
        name: "product",
        message: "What product would you like to buy? You can use the item_id or the item's name." 
       },
      {
        type: "input",
        name: "amount",
        message: "How many would you like to buy?"
    }
      ])
      .then(function(answer) {
        let selection;
        var quantity = parseInt(answer.amount);
        connection.query("SELECT * FROM products", function(err, res) {
            res.forEach(function(row) 
            {
              if (parseInt(answer.product) === row.item_id) 
              {
                selection = row
              }
            })
           // making sure we have enogh products and place the order
            if ((selection.stock_quantity - quantity) >= 0) 
            {
                 console.log("Your order has been placed");
                 connection.query(`UPDATE products SET stock_quantity=(${parseFloat(selection.stock_quantity)} - ${parseFloat(quantity)}) WHERE item_id=${selection.item_id}`, function(err, res) {
                    if (err) throw err;
                    console.log("record(s) updated");
                 })
                 }
                    
             else {
                console.log("Sorry, but we have insufficient stock to fulfill your order. You requested " );
            }

    })
})

}