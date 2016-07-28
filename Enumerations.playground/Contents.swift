//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum ShapeDimensions{
    case Point;
    case Rectangle(width:Double, height:Double);
    case Circle(radius:Double);
    case Triangle(side1: Double, side2:Double, side3:Double);
    
    func perimeter() -> Double{
        switch self {
            case .Point:
                return 0;
            case let .Rectangle(width: w, height: h):
                return 2*(w+h);
            case let .Circle(radius:r):
                return 2*3.14*r;
            case let .Triangle(side1:s1, side2:s2, side3:s3):
                return s1+s2+s3;
            
        }
    }
}

var pointShape = ShapeDimensions.Point;
print("point perimeter is \(pointShape.perimeter())");

var rectangleShape = ShapeDimensions.Rectangle(width: 5, height: 5);
print("rectangle perimeter is \(rectangleShape.perimeter())");

var cicleShape = ShapeDimensions.Circle(radius: 10);
print("cicle perimeter is \(cicleShape.perimeter())");

var triangleShape = ShapeDimensions.Triangle(side1: 2, side2: 3, side3: 4);
print("triangle perimeter is \(triangleShape.perimeter())");

