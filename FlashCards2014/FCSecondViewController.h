//
//  FCSecondViewController.h
//  FlashCards2014
//
//  Created by Yael Weinberg on 1/31/14.
//  Copyright (c) 2014 Yael Weinberg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FCDictionary.h"

@interface FCSecondViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) FCDictionary* dictionary;

@end
