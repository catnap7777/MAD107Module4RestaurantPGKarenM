import Cocoa

var str = "Hello, playground"

//.. This playground program uses hard coded menu item values from an enum and an array and calculates
//..   the order cost, the tax, the tip, and the total cost to the user

//.. variables and initializations

//.. playing around with enums
print("*************************************************************************************************************")
print("********                            Code using Enums and Functions                                   ********")
print("*************************************************************************************************************")

enum FoodOrder {
    case cheeseburger(String, String, Double)
    case frenchfries(String, Double)
    case softdrink(String, String, Double)
    case chickensandwich(String, Double)
    case gyro(String, Double)
    case onionrings(String, Double)
    case cheesestix(String, Double)
}

var cheeseBurger = FoodOrder.cheeseburger("Cheese Burger", "Double Bacon Burger Special with Cheese", 3.00)
var frenchFries = FoodOrder.frenchfries("French Fries", 2.25)
var softDrink = FoodOrder.softdrink("Soft Drink", "Coca Cola", 1.00)
var chickenSandwich = FoodOrder.chickensandwich("Chicken Sandwich", 3.25)
var gyro = FoodOrder.gyro("Gyro Sandwich", 4.25)
var onionRings = FoodOrder.onionrings("Onion Rings", 2.25)
var cheeseStix = FoodOrder.cheesestix("Cheese Stix", 1.25)

var orderLineItem = cheeseBurger

let taxRateE = 0.075

var itemOrderedE: String = ""
var itemPriceE: Double = 0.00
var tipCalculatedE: Double = 0
var tipCalculated2E: Double = 0
var taxCalculatedE: Double = 0
var orderAmtE: Double = 0
var totalOrderAmtE: Double = 0

//.. I don't understand how to pass enum data into a function and then call it :(
//func printMenuItemOrdered(orderLineItem: FoodOrder) {
//print(orderLineItem)
//printMenuItemOrdered(orderLineItem: FoodOrder)

func printMenuItemOrdered() {
    
    switch orderLineItem {
    case .cheeseburger(var burgerType, var burgerDesc, var burgerPrice):
        print("\t\t\(burgerType) - \(burgerDesc) = $\(String(format: "%.2f", burgerPrice))")
        orderAmtE += burgerPrice
    case .frenchfries(var item, var itemPrice):
        print("\t\t\(item) = $\(String(format: "%.2f", itemPrice))")
        orderAmtE += itemPrice
    case .softdrink(var itemType, var itemDesc, var itemPrice):
        print("\t\t\(itemType) - \(itemDesc) = $\(String(format: "%.2f", itemPrice))")
        orderAmtE += itemPrice
    case .chickensandwich(var item, var itemPrice):
        print("\t\t\(item) = $\(String(format: "%.2f", itemPrice))")
        orderAmtE += itemPrice
    case .gyro(var item, var itemPrice):
        print("\t\t\(item) = $\(String(format: "%.2f", itemPrice))")
        orderAmtE += itemPrice
    case .onionrings(var item, var itemPrice):
        print("\t\t\(item) = $\(String(format: "%.2f", itemPrice))")
        orderAmtE += itemPrice
    case .cheesestix(var item, var itemPrice):
        print("\t\t\(item) = $\(String(format: "%.2f", itemPrice))")
        orderAmtE += itemPrice
    }
}

print(".............................................................................................................")
print("Items ordered off the menu today include:\n")

orderLineItem = cheeseBurger
printMenuItemOrdered()
orderLineItem = frenchFries
printMenuItemOrdered()
orderLineItem = softDrink
printMenuItemOrdered()
orderLineItem = chickenSandwich
printMenuItemOrdered()
orderLineItem = gyro
printMenuItemOrdered()
orderLineItem = onionRings
printMenuItemOrdered()
orderLineItem = cheeseStix
printMenuItemOrdered()
orderLineItem = FoodOrder.softdrink("*** FREE SOFT DRINK WITH PURCHASE ***", "Dr. Pepper", 0.0)
printMenuItemOrdered()

taxCalculatedE = orderAmtE * taxRateE
tipCalculatedE = orderAmtE * 0.20
//..if calculating as a number and not converting to string
//tipCalculated2 = round(orderAmt * 0.20 * 100)/100

totalOrderAmtE = orderAmtE + taxCalculatedE + tipCalculatedE

print(".............................................................................................................")
//print("\nSubtotal order amount without tax and tip = \t$\(orderAmt)")
//.. formatted better
print("\nSubtotal order amount without tax and tip = \t$\(String(format: "%.2f", orderAmtE))")

print(".............................................................................................................")
//print("Tax calculated at rate of \(taxRate) = \t\t\t\t$\(taxCalculated)")
//.. formatted better
print("Tax calculated at rate of \(taxRateE) = \t\t\t\t$\(String(format: "%.2f", taxCalculatedE))")

print(".............................................................................................................")
//print("Tip calculated at 20% = \t\t\t\t\t\t$\(tipCalculated)")
//print("Tip calculated at 20% = \t\t\t\t\t\t$\(tipCalculated2)")
//.. formatted better
print("Tip calculated at 20% = \t\t\t\t\t\t$\(String(format: "%.2f", tipCalculatedE))")

print(".............................................................................................................")
print("The total amount for this order with tax and tip included: ")
//print("\t\t--> $\(totalOrderAmt)")
//.. formatted better
print("\t\t    *****************")
print("\t\t--> ***   $\(String(format: "%.2f", totalOrderAmtE))")
print("\t\t    *****************")


//.. Same thing but using a 2D Array instead
//
print("\n\n*************************************************************************************************************")
print("********                                     Code using Arrays                                       ********")
print("*************************************************************************************************************")

//.. 2D Array
let foodOrdered = [["Cheese Burger", 3.00],["French Fries", 2.25],["Soft Drink", 1.00],
                   ["Chicken Sandwich", 3.25], ["Gyro", 4.25], ["Onion Rings", 2.25], ["Cheese Stix", 1.25]]

let taxRate = 0.075

var itemOrdered: String = ""
var itemPrice: Double = 0.00
var tipCalculated: Double = 0
var tipCalculated2: Double = 0
var taxCalculated: Double = 0
var orderAmt: Double = 0
var totalOrderAmt: Double = 0
var i = 0

print(".............................................................................................................")
print("Items ordered off the menu today include:\n")

for item in foodOrdered {
    //print(item)
    itemOrdered = foodOrdered[i][0] as! String
    itemPrice = foodOrdered[i][1] as! Double
    //print("\t\t\(itemOrdered) = $\(itemPrice)")
    //.. formatted better
    print("\t\t\(itemOrdered) = $\(String(format: "%.2f", itemPrice))")
    i += 1
    orderAmt += itemPrice
}

taxCalculated = orderAmt * taxRate
tipCalculated = orderAmt * 0.20
//..if calculating as a number and not converting to string
//tipCalculated2 = round(orderAmt * 0.20 * 100)/100

totalOrderAmt = orderAmt + taxCalculated + tipCalculated

print(".............................................................................................................")
//print("\nSubtotal order amount without tax and tip = \t$\(orderAmt)")
//.. formatted better
print("\nSubtotal order amount without tax and tip = \t$\(String(format: "%.2f", orderAmt))")

print(".............................................................................................................")
//print("Tax calculated at rate of \(taxRate) = \t\t\t\t$\(taxCalculated)")
//.. formatted better
print("Tax calculated at rate of \(taxRate) = \t\t\t\t$\(String(format: "%.2f", taxCalculated))")

print(".............................................................................................................")
//print("Tip calculated at 20% = \t\t\t\t\t\t$\(tipCalculated)")
//print("Tip calculated at 20% = \t\t\t\t\t\t$\(tipCalculated2)")
//.. formatted better
print("Tip calculated at 20% = \t\t\t\t\t\t$\(String(format: "%.2f", tipCalculated))")

print(".............................................................................................................")
print("The total amount for this order with tax and tip included: ")
//print("\t\t--> $\(totalOrderAmt)")
//.. formatted better
print("\t\t    *****************")
print("\t\t--> ***   $\(String(format: "%.2f", totalOrderAmt))")
print("\t\t    *****************")

