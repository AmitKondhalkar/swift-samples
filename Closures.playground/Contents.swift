//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var array = [80,10,30,40,70,20];

func sortDesc(i:Int, j:Int) -> Bool {
    if(i>j){
        return true;
    } else{
        return false;
    }
}
var sortedArray1 = array.sort(sortDesc);
print("Sorted Array 1 : \(sortedArray1)");

//shorter code for closure
var sortedArray2 = array.sort({ (i:Int, j:Int) -> Bool in
    if(i > j) {
        return true;
    } else {
        return false;
    }
})
print("Sorted Array 2 : \(sortedArray2)");

// more shorter code for closure
var sortedArray3 = array.sort({i,j in i>j});
print("Sorted Array 3 : \(sortedArray3)");

// super shorted code for closure
var sortedArray4 = array.sort({$0 > $1});
print("Sorted Array 4 : \(sortedArray4)");


// functions as return types
func makeTownGrand() -> (Int, Int) -> Int {
    func buildRoads(lightsToAdd : Int, toLights: Int) -> Int {
        return toLights + lightsToAdd;
    }
    return buildRoads;
}
var stopLights = 4;
let townPlan = makeTownGrand();
stopLights = townPlan(4, stopLights);
print("City has \(stopLights) stoplights");

// functions as arguments
func makeTownGrand(budget:Int, condition:(Int->Bool)) -> ((Int, Int) -> Int)?{
    if(condition(budget)){
        func buildRoads(lightsToAdd : Int, toLights: Int) -> Int {
            return toLights + lightsToAdd;
        }
        return buildRoads;
    } else {
        return nil;
    }
}

func evaluateBudget(budget:Int) -> Bool {
    return budget > 1000;
}

var stopLights1 = 4;
if let townPlan1 = makeTownGrand(1000, condition: evaluateBudget){
    stopLights1 = townPlan1(4, stopLights1);
}
print("City has \(stopLights1) lights");

var stopLights2 = 4;
if let townPlan2 = makeTownGrand(2000, condition: evaluateBudget){
    stopLights2 = townPlan2(4, stopLights2);
}
print("City has \(stopLights2) lights");



//closures captures values
func makeGrowthTracker(incrementBy growth : Int) -> (()->Int){
    var totalGrowth = 0;
    func growBy500() -> Int{
        totalGrowth = totalGrowth + growth;
        return totalGrowth;
    }
    return growBy500;
}

var currentPopulation = 5000;
let growBy500 =  makeGrowthTracker(incrementBy: 500);
growBy500();
growBy500();
currentPopulation += growBy500();
print("Current population is \(currentPopulation).")

// functional programming - map, filter and reduce
let precinctPopulation = [1000,2000,1500];
let projetedPopulations = precinctPopulation.map( { (population:Int) -> Int in
        return population * 2;
})

let mapProjection = precinctPopulation.map{return $0 * 2};
mapProjection;
let filterProjection = precinctPopulation.filter {return $0 > 1200};
filterProjection;
let reduceProjection = precinctPopulation.reduce(0) { (accumulatedProjection: Int, precinctProjection:Int)-> Int in
    print (accumulatedProjection);
    print(precinctProjection);
    return accumulatedProjection + precinctProjection;
};
reduceProjection;




