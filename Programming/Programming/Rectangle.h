//
//  Rectangle.h
//  Programming
//
//  Created by Tony on 12/9/14.
//  Copyright (c) 2014 Tony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"

@interface Rectangle : NSObject

@property int width, height;

-(XYPoint *) origin;

-(void) setOrigin: (XYPoint *) pt;

-(int) area;

-(int) perimeter;

-(void) setWidth: (int) width andHeight: (int) height;

@end
