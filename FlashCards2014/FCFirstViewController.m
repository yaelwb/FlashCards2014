//
//  FCFirstViewController.m
//  FlashCards2014
//
//  Created by Yael Weinberg on 1/31/14.
//  Copyright (c) 2014 Yael Weinberg. All rights reserved.
//

#import "FCFirstViewController.h"

@interface FCFirstViewController ()

@end

@implementation FCFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)next:(id)sender
{
}

- (IBAction)showDef:(id)sender
{
    [definition setText:@"Def"];
}

- (IBAction)showHint:(id)sender
{
    [hint setText:@"Hint"];
}


@end
