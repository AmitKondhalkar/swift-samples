//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// guard statement
func greetByMiddleName(name :(first:String, middle:String?, last:String)){
    guard let middleName = name.middle else {
        print("hi");
        return;
    }
    print("\(middleName)");
}

greetByMiddleName(("A", nil , "C"));

greetByMiddleName(("A", "B" , "C"));


//guard statement
print ("*********************************************");
func greetWithMoreThan4Char(name:(first:String?, middle:String, last:String)){
    guard let firstName = name.first else {
        print("First Name is null -> Hi There!");
        return;
    }
    
    guard firstName.characters.count > 4 else{
        print("First Name '\(firstName)' is less than 4 characters.");
        return;
    }
    print("hi \(firstName)");
    
   }

greetWithMoreThan4Char((nil, "B", "C"));
greetWithMoreThan4Char(("Amit", "", "C"));
greetWithMoreThan4Char(("Sumit", "B", "C"));


// Grocery list seggregation
print ("*********************************************");
func beanSifter(groceryList list: [String]?) -> (beans:[String], otherBeans:[String]) {
    var sortedList : (beans:[String], otherBeans:[String]) = ([],[]);
    guard let list = list else {
        print("grocery list is empty");
        return ([],[]);
    }
    for item in list {
        if item.hasSuffix("beans"){
            sortedList.beans.append(item);
        } else {
            sortedList.otherBeans.append(item);
        }
    }
    print(list);
    print(sortedList);
    return sortedList;
}

let result = beanSifter(groceryList: ["green beans", "milk", "black beans", "eggs"] )
print(result.beans);
print(result.otherBeans);

let emptyResult = beanSifter(groceryList: [] )
print(emptyResult.beans);
print(emptyResult.otherBeans);

