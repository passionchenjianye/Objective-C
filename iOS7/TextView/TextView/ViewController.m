//
//  ViewController.m
//  TextView
//
//  Created by Tony on 12/17/14.
//  Copyright (c) 2014 Tony. All rights reserved.
//

#import "ViewController.h"
#import "TextStatsViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *body;
@property (weak, nonatomic) IBOutlet UILabel *headline;
@property (weak, nonatomic) IBOutlet UIButton *outlineButton;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupOulineButton];
}

- (void)setupOulineButton {
    if(self.outlineButton.currentTitle) {
        NSMutableAttributedString *title = [[NSMutableAttributedString alloc] initWithString:self.outlineButton.currentTitle];
        [title setAttributes: @{ NSStrokeWidthAttributeName: @3, NSStrokeColorAttributeName: self.outlineButton.tintColor} range: NSMakeRange(0, [title length])];
        [self.outlineButton setAttributedTitle:title forState: UIControlStateNormal];

    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"Analyze Text"]) {
        if ([segue.destinationViewController isKindOfClass:[TextStatsViewController class]]) {
            TextStatsViewController *tsvc = (TextStatsViewController *)segue.destinationViewController;
            tsvc.textToAnalyze = self.body.textStorage;
        }
    }
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(preferredFontChanged:) name: UIContentSizeCategoryDidChangeNotification object:nil];
}

- (void)preferredFontChanged: (NSNotification *)notification {
    [self usePreferredFonts];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:nil];
}

- (void)usePreferredFonts {
    self.body.font = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    self.headline.font = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
}

- (IBAction)changeBodySelectionColorToMatchBackgroundOfButton:(UIButton *)sender {
    [self.body.textStorage addAttribute:NSForegroundColorAttributeName value:sender.backgroundColor range:self.body.selectedRange];
}
- (IBAction)outlineButtonSelection {
    [self.body.textStorage addAttributes:@{ NSStrokeWidthAttributeName: @-3, NSStrokeColorAttributeName: [UIColor blackColor]} range: self.body.selectedRange];
}
- (IBAction)unoutlineBodySelection {
    [self.body.textStorage removeAttribute: NSStrokeWidthAttributeName range: self.body.selectedRange];
//    [self.body.textStorage removeAttribute: NSStrokeColorAttributeName range: self.body.selectedRange];
}

@end
