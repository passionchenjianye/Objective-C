//
//  Card.m
//  CardGame
//
//  Created by Tony on 12/15/14.
//  Copyright (c) 2014 Tony. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int) match:(NSArray *)otherCards {
    int score = 0;
    for (Card *card in otherCards) {
        score = 1;
    }
    return score;
}

@end
