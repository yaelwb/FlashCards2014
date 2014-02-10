//
//  FCDictionary.h
//  FlashCards2014
//
//  Created by Yael Weinberg on 2/9/14.
//  Copyright (c) 2014 Yael Weinberg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FCDictionary : NSObject
@property (strong, nonatomic) NSMutableArray *words;

-(void) incIndex;
-(int) index;

@end
