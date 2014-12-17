//
//  Square.m
//  Programming
//
//  Created by Tony on 12/9/14.
//  Copyright (c) 2014 Tony. All rights reserved.
//

#import "Square.h"

@implementation Square

-(void) setSide:(int)s {
    [self setWidth:s andHeight:s];
}

-(int) side {
    return self.width;
}
@end
