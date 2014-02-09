//
//  FCFirstViewController.h
//  FlashCards2014
//
//  Created by Yael Weinberg on 1/31/14.
//  Copyright (c) 2014 Yael Weinberg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FCFirstViewController : UIViewController
{
    IBOutlet UILabel *word;
    IBOutlet UILabel *definition;
    IBOutlet UILabel *hint;
}
- (IBAction)next:(id)sender;
- (IBAction)showHint:(id)sender;
- (IBAction)showDef:(id)sender;
@end
