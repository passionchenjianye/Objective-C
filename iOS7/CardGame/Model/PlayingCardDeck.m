//
//  PlayingCardDeck.m
//  CardGame
//
//  Created by Tony on 12/16/14.
//  Copyright (c) 2014 Tony. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayCard.h"

@implementation PlayingCardDeck

-(instancetype)init {
    self = [super init];
    if (self) {
        for(NSString *suit in [PlayCard validSuits]) {
            for(NSUInteger rank = 1; rank <= [PlayCard maxRank]; rank++) {
                PlayCard *card = [[PlayCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card];
            }
        }
    }
    return self;
}

@end
