//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// sets

var myCities = Set(["Mumbai", "Pune", "Mangalore"]);
var yourCities = Set(["Pune", "Mumbai"]);

let isYourCitiesAreMine = myCities.isStrictSupersetOf(yourCities);

myCities.intersectInPlace(yourCities);
print(myCities);

yourCities.unionInPlace(myCities);
print(yourCities);

