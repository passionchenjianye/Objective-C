//
//  main.m
//  day2
//
//  Created by Tony on 12/16/14.
//  Copyright (c) 2014 Tony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"
#import "AddressBook.h"

int main(int argc, const char * argv[]) {
    //    int i;
    @autoreleasepool {
        //        //Create an array to contain the month names
        //        NSArray *monthNames = [NSArray arrayWithObjects: @"January", @"February", @"March", @"April", @"May", @"June", @"July", @"August", @"September", @"October", @"November", @"December", nil];
        //        //Now list all the elements in the array
        //        NSLog(@"Month   Name");
        //        NSLog(@"=====   ====");
        //        for (i = 0; i < 12; ++i) {
        //            NSLog(@" %2i    %@", i + 1, [monthNames objectAtIndex: i]);
        //        }
        //
        //        NSArray *monthNames1 = @[@"January", @"February", @"March", @"April", @"May", @"June", @"July", @"August", @"September",
        //                                @"October", @"November", @"December"];
        //        NSLog(@"Month   Name");
        //        NSLog(@"=====   ====");
        //        for (i = 0; i < 12; ++i) {
        //            NSLog(@" %2i    %@", i + 1, monthNames1[i]);
        //        }
        
        
        
        //        NSMutableArray *numbers = [NSMutableArray array];
        //        int i;
        //        //Create an array with the numbers 0 - 9
        //        for (i = 0; i < 10; ++i) {
        //            numbers[i] = @(i);
        //        }
        //
        //        //Sequence through the array and display the values
        //        for (i = 0; i < 10; ++i) {
        //            NSLog(@"%@", numbers[i]);
        //        }
        //
        //        //Look how the NSLog can display it with a single %@ format
        //        NSLog(@"====== Using a single NSLog");
        //        NSLog(@"%@", numbers);
        
        //        NSString *aName = @"Julia Kochan";
        //        NSString *aEmail = @"jewls337@axlc.com";
        //        AddressCard *card1 = [[AddressCard alloc] init];
        //        [card1 setName:aName];
        //        [card1 setEmail:aEmail];
        //        [card1 print];
        
        
        //        NSString *aName = @"Julia Kochan";
        //        NSString *aEmail = @"jewls337@axlc.com";
        //        NSString *bName = @"Tony Iannino";
        //        NSString *bEmail = @"tony.iannino@techfitness.com";
        //
        //        AddressCard *card1 = [[AddressCard alloc] init];
        //        AddressCard *card2 = [[AddressCard alloc] init];
        //
        //
        //        [card1 setName: aName andEmail: aEmail];
        //        [card2 setName: bName andEmail: bEmail];
        //
        //
        //        [card1 print];
        //        [card2 print];
        
        
        
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        NSString *bName = @"Tony Iannino";
        NSString *bEmail = @"tony.iannino@techfitness.com";
        NSString *cName = @"Stephen Kochan";
        NSString *cEmail = @"steve@classroomM.com";
        NSString *dName = @"Jamie Baker";
        NSString *dEmail = @"jbaker@classroomM.com";
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        
        //set up a new address book
        AddressBook *myBook = [[AddressBook alloc] initWithName:@"Tony` Address Book"];
        NSLog(@"Entries in address book after creation: %li", [myBook entries]);
        
        //Now set up four address cards
        [card1 setName:aName andEmail:aEmail];
        [card2 setName:bName andEmail:bEmail];
        [card3 setName:cName andEmail:cEmail];
        [card4 setName:dName andEmail:dEmail];
        
        //Add the cards to the address book
        [myBook addCard:card1];
        [myBook addCard:card2];
        [myBook addCard:card3];
        [myBook addCard:card4];
        
        NSLog(@"Entries in address book after adding cards: %li",[myBook entries]);
        
        //list all the entries in the book now
        [myBook list];
        
        
    }
    return 0;
}
