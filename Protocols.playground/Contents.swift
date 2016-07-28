//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func printData(data : [[Int]]){
    for row in data {
        var out = "";
        for item in row {
            out += "\(item)|";
        }
        print(out);
    }
}

var arr = [ [10,12,14],
            [20,22,24],
            [30,32,34]];

printData(arr);

9657020677