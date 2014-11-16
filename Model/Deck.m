//
//  Deck.m
//  matchismo
//
//  Created by Brian on 13/11/2014.
//  Copyright (c) 2014 Grimsoft. All rights reserved.
//

#import "Deck.h"

@interface Deck()

@property (strong, nonatomic) NSMutableArray* cards;

@end

@implementation Deck

-(NSMutableArray *) cards{
    //This is a private getter for getting cards in the deck.
    // it first checks if there is an array to place a card into,
    if (!_cards)
    {
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}
- (void) insertCard:(Card *) card atTop: (BOOL) top{

    if (top) {
        [self.cards insertObject:card atIndex:0];
    } else {
        [self.cards addObject:card];
    }

}
- (void) insertCard:(Card *) card{
    [self insertCard:card
               atTop:FALSE];
}
- (Card *) getRandomCard{
    Card* randomCard = nil;
    
    if ([self.cards count]) {
    u_int32_t index = arc4random()% [self.cards count];
    randomCard = self.cards[index];
    [self.cards removeObjectAtIndex:index];
    }
    return randomCard;
}

@end
