import Cocoa

var str = "Hello, playground"

//.. This playground program uses hard coded menu item values from an array and calculates
//..   the order cost, the tax, the tip, and the total cost to the user

//.. variables and initializations

let foodOrdered = [["Cheese Burger", 3.00],["Frenchfries", 2.25],["Soft Drink", 1.00],["Chicken Sandwich", 3.25], ["Gyro", 4.25]]
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
print("Items ordered off the menu today include:")

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

taxCalculated = orderAmt * taxRate //this is wrong... look up rounding for decimals
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
