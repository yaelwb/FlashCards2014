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
            _words = [[NSMutableArray alloc] initWithObjects:@"Articulate", @"Diligent", @"Mundane", @"Procrastinate", @"Recuperate", @"Tenatcious", nil];
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

-(void) incIndex
{
    index++;
    if(index == [_words count])
        index = 0;
}

-(int) index
{
    return index;
}
-(NSString*) getNextWord
{
    if(!_words || [_words count] ==0)
        return @"Please add words";
    [self incIndex];
    return _words[index];
}

-(NSString*) getFirstWord
{
    if(!_words || [_words count] ==0)
        return @"Please add words";
    return _words[0];
}
@end
