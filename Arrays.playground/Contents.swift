//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//Collections and Functions in Swift

//Arrays

var todoList = ["Read Swift book", "Read iOS book", "Complete Login Module"];

var isItemPresentInArray = todoList.count;

if(isItemPresentInArray > 0){
    print("\(isItemPresentInArray) items present in array.");
} else {
    print("no item presentin array.");
}


// reverse array using while loop
var i = todoList.count-1;
var reverseArray: [String] = [];
while i >= 0 {
    reverseArray.append(todoList[i])
    i-=1;
}
print(reverseArray);

// reverse array using for loop
var k = todoList.count-1;
reverseArray = [];
for var j in 0...k {
    reverseArray.append(todoList[k-j])
    j+=1;
}

print (reverseArray);

// reverse array using function
reverseArray = [];
reverseArray =  todoList.reverse();

//immutable array
let swiftBooks = ["Swift Programming", "Swift Tutorial" ];
//swiftBooks.append("test book"); 