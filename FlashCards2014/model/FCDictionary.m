//
//  FCDictionary.m
//  FlashCards2014
//
//  Created by Yael Weinberg on 2/9/14.
//  Copyright (c) 2014 Yael Weinberg. All rights reserved.
//

#import "FCDictionary.h"

@interface FCDictionary ()
@property (assign, nonatomic) int index;
@end

@implementation FCDictionary
@synthesize index;

-(id) init
{
    self = [super init];
    if (self)
    {
        if(!_words)
        {
            _words = [[NSMutableArray alloc] initWithObjects:@"Articulate", @"Recuperate", @"Diligent", @"Mundane", @"Procrastinate", @"Tenatcious", nil];
        }
        /*wordsBucket = [[NSMutableArray alloc] init];
        knownWords = [[NSMutableArray alloc] init];
        wordToDef = [[NSMutableDictionary alloc] init];
        wordToSentence = [[NSMutableDictionary alloc] init];
        wordToScore = [[NSMutableDictionary alloc] init];*/
        index = 0;
    }
    return self;
}

- (void) addWord:(NSString *)word
    WithHint:(NSString *) hint
          AndDef:(NSString *) def
{
    /*[wordsBucket addObject:word];
    [wordToDef setValue:def forKey:word];
    [wordToSentence setValue:sentence forKey:word];
    [wordToScore setValue:[NSNumber numberWithInt:0] forKey:word];*/
}

@end
