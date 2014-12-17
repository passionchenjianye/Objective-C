//
//  AddressCard.h
//  day2
//
//  Created by Tony on 12/16/14.
//  Copyright (c) 2014 Tony. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject

@property (copy,nonatomic) NSString *name, *email;

- (void)setName:(NSString *)theName andEmail: (NSString *)theEmail;

- (void)print;

@end