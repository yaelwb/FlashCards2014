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
    [_definition setText:@"Def"];
}

- (IBAction)showHint:(id)sender
{
    [_hint setText:@"Hint"];
}


@end
