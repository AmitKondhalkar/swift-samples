//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//Dictionary

var movieRatings : [String : Int] = [:];
movieRatings = ["Fight Club" : 4,  "Terminator" : 5];

print("movie rating \(movieRatings["Terminator"])");


//Dictionary + Array

var stateZip : [String: [String]] = ["MH" : ["400605", "400607"]];

stateZip.updateValue(["120100", "120000"], forKey: "DL");
stateZip.updateValue(["220100", "220000"], forKey: "PN");
stateZip.updateValue(["320100", "320000"], forKey: "UP");

print(stateZip);

for state in stateZip.keys {
    var zips = (stateZip[state]);
    print(zips);
}

for (key, value) in stateZip{
    print ("\(key) state has \(value) zipcodes");
}