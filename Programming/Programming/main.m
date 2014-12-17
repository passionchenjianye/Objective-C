//
//  main.m
//  Programming
//
//  Created by Tony on 12/9/14.
//  Copyright (c) 2014 Tony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "Square.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        Rectangle *myRect = [[Rectangle alloc] init];
//        [myRect setWidth:5 andHeight:8];
//        
//        NSLog(@"Rectangle: w = %i, h = %i", myRect.width,myRect.height);
//        NSLog(@"Area = %i, Perimeter = %i",myRect.area, myRect.perimeter);

//        Square *square = [[Square alloc] init];
//        [square setSide:5];
//        NSLog(@"Sqaure s = %i", [square side]);
//        NSLog(@"Area = %i, Perimeter = %i", square.area, square.perimeter);
        
        Rectangle *myRect = [[Rectangle alloc] init];
        XYPoint *myPoint = [[XYPoint alloc] init];
        [myPoint setX:100 andY:200];
        [myRect setWidth:5 andHeight:8];
        myRect.origin = myPoint;
//        NSLog (@"Rectangle w = %i, h = %i", myRect.width, myRect.height); NSLog (@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y); NSLog (@"Area = %i, Perimeter = %i",[myRect area], [myRect perimeter]);
        NSLog (@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y);
        [myPoint setX: 50 andY: 50];
        NSLog (@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y);
    }
    return 0;
}
