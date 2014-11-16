//
//  Game.m
//  matchismo
//
//  Created by Brian on 15/11/2014.
//  Copyright (c) 2014 Grimsoft. All rights reserved.
//

#import "Game.h"

@interface Game()
@property (nonatomic, readwrite) NSUInteger score;
@property (nonatomic, strong) NSMutableArray* cards; //Array of card
@end

@implementation Game

- (NSMutableArray*)cards{
    if (!_cards) {
        _cards =[[NSMutableArray alloc]init];
    }
    return _cards;
}
- (instancetype)initWithCardCount:(NSUInteger)numberOfCards usingDeck:(Deck *)deck
{
    self = [super init];
    if (self)
    {
        for (int i = 0; i<numberOfCards; i++) {
            [self.cards addObject:[deck getRandomCard]];
        }
    }
    return self;
}

-(Card *)cardAtIndex:(NSUInteger)index{
    if index in [NSRange ]
    Card *card =[self.cards objectAtIndex:index];
    return card ? card : nil;
}

-(void)chooseCardAtIndex:(NSUInteger)index{
    Card* cardi = [self.cards objectAtIndex:index];
    cardi.Selected = !cardi.isSelected;
    
}

@end
