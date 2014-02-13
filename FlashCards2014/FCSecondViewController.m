//
//  FCSecondViewController.m
//  FlashCards2014
//
//  Created by Yael Weinberg on 1/31/14.
//  Copyright (c) 2014 Yael Weinberg. All rights reserved.
//

#import "FCSecondViewController.h"

@interface FCSecondViewController ()
@end

@implementation FCSecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_dictionary wordCount];
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    cell.textLabel.text = [_dictionary getWordAtIndex:indexPath.row];
    return cell;
}


@end
