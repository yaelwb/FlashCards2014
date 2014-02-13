//
//  FCFirstViewController.m
//  FlashCards2014
//
//  Created by Yael Weinberg on 1/31/14.
//  Copyright (c) 2014 Yael Weinberg. All rights reserved.
//

#import "FCFirstViewController.h"

@interface FCFirstViewController ()
@property (weak, nonatomic) IBOutlet UILabel *word;
@property (weak, nonatomic) IBOutlet UILabel *definition;
@property (weak, nonatomic) IBOutlet UILabel *hint;
@end

@implementation FCFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [_word setText:[_dictionary getFirstWord]];
}

- (IBAction)next:(id)sender
{
    [_word setText:[_dictionary getNextWord]];
    [_definition setText:@""];
    [_hint setText:@""];
}

- (IBAction)showDef:(id)sender
{
    [_definition setText:[_dictionary getDefAtIndex:[_dictionary currentIndex]]];
}

- (IBAction)showHint:(id)sender
{
    [_hint setText:[_dictionary getHintAtIndex:[_dictionary currentIndex]]];
}


@end
