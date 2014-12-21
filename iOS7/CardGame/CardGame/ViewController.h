//
//  ViewController.h
//  CardGame
//
//  Created by Tony on 12/14/14.
//  Copyright (c) 2014 Tony. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Deck.h"

@interface ViewController : UIViewController

//protected fro subclasses
- (Deck *)createDeck; //abstract

@end

