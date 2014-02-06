//
//  FCSecondViewController.m
//  FlashCards2014
//
//  Created by Yael Weinberg on 1/31/14.
//  Copyright (c) 2014 Yael Weinberg. All rights reserved.
//

#import "FCSecondViewController.h"
#import "FCCardsView.h"

@interface FCSecondViewController ()

@end

@implementation FCSecondViewController
{
    NSArray *words;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //Later on, the data will be loaded from a model, and some will be added on the fly
    words = [NSMutableArray arrayWithObjects:@"Articulate", @"Recuperate", @"Diligent", @"Mundane", @"Procrastinate", @"Tenatcious", nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [words count];
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *wordsTableIdentifier = @"wordsTableCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:wordsTableIdentifier];
    
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:wordsTableIdentifier];
    }
    cell.textLabel.text = [words objectAtIndex:indexPath.row];
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
