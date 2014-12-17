//
//  PlayCard.m
//  CardGame
//
//  Created by Tony on 12/15/14.
//  Copyright (c) 2014 Tony. All rights reserved.
//

#import "PlayCard.h"

@implementation PlayCard

- (NSString *)contents {
    NSArray *rankStrings = [PlayCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

- (int)match:(NSArray *)otherCards {
    int score = 0;
    if ([otherCards count] == 1) {
        PlayCard *otherCard = [otherCards firstObject];
        if (otherCard.rank == self.rank) {
            score = 4;
        } else if([otherCard.suit isEqualToString:self.suit]){
            score = 1;
        }
    }
    
    return score;
}

+ (NSArray *)validSuits {
    return @[@"♥︎",@"♠︎",@"♣︎",@"♦︎"];
}

@synthesize suit = _suit;

- (void)setSuit:(NSString *)suit {
    if ([[PlayCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *)suit {
    return _suit ? _suit : @"?";
}

+ (NSArray *)rankStrings {
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

+ (NSUInteger)maxRank {
    return [[self rankStrings] count] - 1;
}

- (void)setRank:(NSUInteger)rank {
    if(rank <= [PlayCard maxRank]) {
        _rank = rank;
    }
}

@end
