//
//  FCDictionary.m
//  FlashCards2014
//
//  Created by Yael Weinberg on 2/9/14.
//  Copyright (c) 2014 Yael Weinberg. All rights reserved.
//

#import "FCDictionary.h"

@interface FCDictionary ()
@property (nonatomic) int currentIndex;
@property (strong, nonatomic) NSMutableArray *words;
//Todo - make defs and hints dictionaries, mapping a word to a def/hint
@property (strong, nonatomic) NSMutableArray *defs;
@property (strong, nonatomic) NSMutableArray *hints;
@end

@implementation FCDictionary
@synthesize currentIndex;

-(id) init
{
    self = [super init];
    if (self)
    {
        if(!_words)
        {
            _words = [[NSMutableArray alloc] initWithObjects:@"Articulate", @"Diligent", @"Mundane", @"Procrastinate", @"Recuperate", @"Tenacious", nil];
        }
        if(!_defs)
        {
            _defs = [[NSMutableArray alloc] initWithObjects:@"A person having or showing the ability to speak fluently and coherently.", @"A person having or showing care and conscientiousness in one's work or duties", @"Lacking interest or excitement; dull.", @"Delay or postpone action; put off doing something", @"Recover from illness or exertion.", @"Tending to keep a firm hold of something; clinging or adhering closely", nil];
        }
        if(!_hints)
        {
            _hints = [[NSMutableArray alloc] initWithObjects:@"An articulate account of their experiences", @"Many caves are located only after a diligent search", @"Seeking a way out of his mundane, humdrum existence", @"It won't be this price for long, so don't procrastinate", @"She has been recuperating from a shoulder wound", @"A tenacious grip", nil];
        }
        currentIndex = 0;
    }
    return self;
}



-(NSString*) getWordAtIndex:(int)index;
{
    if(index < [_words count])
        return _words[index];
    return @"No more words";
}
-(NSString*) getDefAtIndex:(int)index
{
    if(index < [_defs count])
        return _defs[index];
    return @"No more definitions";
}
-(NSString*) getHintAtIndex:(int)index
{
    if(index < [_hints count])
        return _hints[index];
    return @"No more hints";
}

//TODO
- (void) addWord:(NSString *)word
    WithHint:(NSString *) hint
          AndDef:(NSString *) def
{
    /*[wordsBucket addObject:word];
    [wordToDef setValue:def forKey:word];
    [wordToSentence setValue:sentence forKey:word];
    [wordToScore setValue:[NSNumber numberWithInt:0] forKey:word];*/
}

-(void) incCurrentIndex
{
    currentIndex++;
    if(currentIndex == [_words count])
        currentIndex = 0;
}

-(int) wordCount
{
    return [_words count];
}
-(int) currentIndex
{
    return currentIndex;
}

-(NSString*) getNextWord
{
    if(!_words || [_words count] ==0)
        return @"Please add words";
    [self incCurrentIndex];
    return _words[currentIndex];
}

-(NSString*) getFirstWord
{
    if(!_words || [_words count] ==0)
        return @"Please add words";
    return _words[0];
}
@end
