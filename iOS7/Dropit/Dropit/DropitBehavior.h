//
//  DropitBehavior.h
//  Dropit
//
//  Created by Tony on 1/28/15.
//  Copyright (c) 2015 Tony. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DropitBehavior : UIDynamicBehavior

- (void) addItem: (id<UIDynamicItem>)item;
- (void) removeItem: (id<UIDynamicItem>)item;

@end
