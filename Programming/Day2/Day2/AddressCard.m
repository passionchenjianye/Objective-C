//
//  AddressCard.m
//  day2
//
//  Created by Tony on 12/16/14.
//  Copyright (c) 2014 Tony. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard

@synthesize name, email;

-(void) print {
    NSLog (@"====================================");
    NSLog (@"|                                  |");
    NSLog (@"| %-31s  |", [name UTF8String]);
    NSLog (@"| %-31s  |", [email UTF8String]);
    NSLog (@"|                                  |");
    NSLog (@"|                                  |");
    NSLog (@"|                                  |");
    NSLog (@"|       o                  o       |");
    NSLog (@"====================================");
}

- (void)setName:(NSString *)theName andEmail: (NSString *)theEmail {
    self.name = theName;
    self.email = theEmail;
}

@end
