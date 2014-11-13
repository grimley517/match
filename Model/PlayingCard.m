//
//  PlayingCard.m
//  matchismo
//
//  Created by Brian on 13/11/2014.
//  Copyright (c) 2014 Grimsoft. All rights reserved.
//

#import "PlayingCard.h"
@interface PlayingCard()

+ (NSArray *) rankStrings;

@end

@implementation PlayingCard

- (NSString *) contents{
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

+ (NSArray *) allowedSuits{
    return @[@"♠️",@"♣️",@"❤︎",@"♦︎"];
}
+ (NSArray *) rankStrings {
    return @[@"?",@"A",@"2", @"3",@"4", @"5", @"6", @"7", @"8", @"9", @"J",@"Q",@"K"];
}
+ (NSUInteger) maxRank{
    return [[PlayingCard rankStrings] count];
}

@end
