//
//  PlayingCardGameViewController.m
//  CardGame
//
//  Created by Tony on 12/21/14.
//  Copyright (c) 2014 Tony. All rights reserved.
//

#import "PlayingCardGameViewController.h"
#import "PlayingCardDeck.h"

@interface PlayingCardGameViewController ()

@end

@implementation PlayingCardGameViewController

- (Deck *)createDeck {
    return [[PlayingCardDeck alloc] init];
}

@end
