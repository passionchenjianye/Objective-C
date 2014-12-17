//
//  CardMatchingGame.h
//  CardGame
//
//  Created by Tony on 12/16/14.
//  Copyright (c) 2014 Tony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"
#import "Card.h"

@interface CardMatchingGame : NSObject

- (instancetype)initWithCardCount: (NSUInteger)count usingDeck: (Deck *)deck;

- (void)chooseCardAtIndex: (NSUInteger)index;

- (Card *)cardAtIndex: (NSUInteger)index;

@property (nonatomic, readonly) NSInteger score;

@end
