//
//  PlayingDeck.m
//  matchismo
//
//  Created by Brian on 13/11/2014.
//  Copyright (c) 2014 Grimsoft. All rights reserved.
//

#import "PlayingDeck.h"


@implementation PlayingDeck

- (instancetype)init{
    self = [super init];
    if (self) {
        for (NSString* suit in [PlayingCard allowedSuits]) {
            for (NSUInteger value = 1; value <= [PlayingCard maxValue]; value++) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.value = value;
                card.suit = suit;
                [self insertCard:card];
            }
        }
    }
    return self;
}

@end
