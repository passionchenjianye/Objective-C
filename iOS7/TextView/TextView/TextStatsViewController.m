//
//  TextStatsViewController.m
//  TextView
//
//  Created by Tony on 12/21/14.
//  Copyright (c) 2014 Tony. All rights reserved.
//

#import "TextStatsViewController.h"

@interface TextStatsViewController ()
@property (weak, nonatomic) IBOutlet UILabel *colorfulCharactersLabel;
@property (weak, nonatomic) IBOutlet UILabel *outlineCharactersLabel;

@end

@implementation TextStatsViewController


- (void)setTextToAnalyze:(NSAttributedString *)textToAnalyze {
    _textToAnalyze = textToAnalyze;
    if (self.view.window) {
        [self updateUI];
    }
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:true];
    [self updateUI];
    
}

- (NSAttributedString *)charactersWithAttribute: (NSString *)attributeName {
    NSMutableAttributedString *characters = [[NSMutableAttributedString alloc] init];
    int index = 0;
    while (index < [self.textToAnalyze length]) {
        NSRange range;
        id value = [self.textToAnalyze attribute:attributeName atIndex:index effectiveRange:&range];
        if (value) {
            [characters appendAttributedString:[self.textToAnalyze attributedSubstringFromRange:range]];
            index = range.location + range.length;
        } else {
            index++;
        }
    }
    return characters;
}

- (void)updateUI {
    self.colorfulCharactersLabel.text = [NSString stringWithFormat:@"%d colorful chracters",[[self charactersWithAttribute:NSForegroundColorAttributeName] length]];
    self.outlineCharactersLabel.text = [NSString stringWithFormat:@"%d outlined chracters",[[self charactersWithAttribute:NSStrokeColorAttributeName] length]];
    
}

@end
