//
//  Deck.h
//  CardGame
//
//  Created by Tony on 12/15/14.
//  Copyright (c) 2014 Tony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard: (Card *)card toTop: (BOOL)atTop;

- (void)addCard: (Card *)card;

- (Card *)drawRandomCard;

@end
