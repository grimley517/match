//
//  PlayingCard.m
//  match
//
//  Created by Brian on 13/11/2014.
//  Copyright (c) 2014 Grimsoft. All rights reserved.
//

#import "PlayingCard.h"
@interface PlayingCard()

+ (NSArray *) rankStrings;

@end

@implementation PlayingCard

- (NSString *) content{
    //overrides the contents getter from card.h
    return [[PlayingCard rankStrings][self.value] stringByAppendingString: self.suit];
}


@synthesize suit = _suit;

- (void) setSuit:(NSString *)suit{
    if ([[PlayingCard allowedSuits] containsObject:suit]){
        _suit = suit;
    }

}
- (NSString *) suit
    {
        return _suit? _suit : @"?";
    }
-(void) setValue:(NSUInteger)value{
    if (value <= [PlayingCard maxValue]) {
        _value = value;
    }
}

//Class Methods
+ (NSArray *) allowedSuits{
    //Returns an array of allowable suits
    return @[@"♠️",@"♣️",@"❤︎",@"♦︎"];
}
+ (NSArray *) rankStrings {
    //returns an array of rankstrings
    return @[@"?",@"A",@"2", @"3",@"4", @"5", @"6", @"7", @"8", @"9", @"J",@"Q",@"K"];
}

+ (NSUInteger) maxValue{
    //returns the number of values allowed 
    return [[PlayingCard rankStrings] count]-1;
}

@end
