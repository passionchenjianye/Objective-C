//
//  Rectangle.m
//  Programming
//
//  Created by Tony on 12/9/14.
//  Copyright (c) 2014 Tony. All rights reserved.
//

#import "Rectangle.h"
#import "XYPoint.h"


@implementation Rectangle {
    XYPoint *origin;
}

@synthesize width = _width, height = _height;

-(void) setWidth: (int) width andHeight: (int) height {
    _width = width;
    _height = height;
}

-(int) area {
    return _width * _height;
}

-(int) perimeter {
    return (_width + _height) * 2;
}

-(XYPoint *) origin {
    return origin;
}

-(void) setOrigin:(XYPoint *)pt {
    if (! origin) {
        origin = [[XYPoint alloc] init];
    }
    origin.x = pt.x;
    origin.y = pt.y;
//    origin = pt;
}

@end
