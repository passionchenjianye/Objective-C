//
//  PlayCard.h
//  CardGame
//
//  Created by Tony on 12/15/14.
//  Copyright (c) 2014 Tony. All rights reserved.
//

#import "Card.h"

@interface PlayCard : Card

@property (strong, nonatomic) NSString *suit;

@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;

+ (NSUInteger)maxRank;

@end
