//
//  FCDictionary.h
//  FlashCards2014
//
//  Created by Yael Weinberg on 2/9/14.
//  Copyright (c) 2014 Yael Weinberg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FCDictionary : NSObject

-(int) wordCount;
-(void) incCurrentIndex;
-(int) currentIndex;
-(NSString*) getNextWord;
-(NSString*) getFirstWord;
-(NSString*) getWordAtIndex:(int)index;
-(NSString*) getDefAtIndex:(int)index;
-(NSString*) getHintAtIndex:(int)index;


@end
