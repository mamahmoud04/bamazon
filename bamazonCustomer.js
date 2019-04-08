var mysql = require("mysql")
var inquirer = require("inquirer")
var connection = mysql.createConnection({
    host: "localhost",
    port: 8889,
    user: "root",
    password: "root",
    database: "bamazon"
});

connection.connect(function (err) {
    if (err) {
        console.error("error connecting: " + err.stack);
        return;
    }
    console.log("connected as id " + connection.threadId);
});

//print items for sale
function begin() {
    connection.query('SELECT * FROM products', function (err, result) {
        if (err) throw err;

        console.log("Bamazon");
        for (var i = 0; i < result.length; i++) {
            console.log("ID: " + result[i].id + " " + "Product: " + result[i].product_name + " " + "Department: " + result[i].department_name + "  " + "Price: " + result[i].price + "  " + "Quantity: " + result[i].stock_quantity);
        }

    })

}

inquirer.prompt([
    {
        type: "input",
        name: "id",
        message: "what Id of the product you would like to buy?",
        // validate: function (val) {
        //     if (!null(val) == false && parseInt(val) <= result.length && parseInt(val) > 0) {
        //         return true;
        //     } else {
        //         return false;

        //     }
        // }
    },
    {
        type: "input",
        name: "quantity",
        message: "How many would you like to buy?",
        validate: function (val) {
            if (!null(val)) {
                return false;
            }
            else {
                return true;
            }
        }
    }
]).then(function (answer) {
    var thingsPurchased = (answer.id) - 1;
    var howMuch = parseInt(answer.quantity);
    var total = parseFloat(((result[thingsPurchased].price) * howMuch).toFixed(2));

    if (result[thingsPurchased].stock_quantity >= howMuch) {
        connection.query("UPDATE products SET ? WHERE ?", [
            { stock_quantity: (result[thingsPurchased].stock_quantity - thingsPurchased) },
            { id: answer.id }
        ], function (err, res) {
            if (err) throw err;
            console.log("Thank! Your total is $" + total.toFixed(2) + ". Your item has been shipped out");

        });

    }

})
reprompt();


//asks if they would like to purchase another item
function reprompt() {
    inquirer.prompt([{
        type: "confirm",
        name: "ask_again",
        message: "Would you like to buy another item?"
    }]).then(function (answer) {
        if (answer.ask_again) {
            start();
        } else {
            console.log("come again!");
        }
    });
}
begin()