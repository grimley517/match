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
static const NSUInteger MATCH_SCORE_MULTIPLIER = 4;
static const NSUInteger TURN_PENALTY = 1;
static const NSUInteger MISMATCH_PENALTY = 2;
- (NSMutableArray*)cards{
    if (!_cards) {
        _cards =[[NSMutableArray alloc]init];
    }
    return _cards;
}
- (instancetype)initWithCardCount:(NSUInteger)numberOfCards
                        usingDeck:(Deck *)deck
{
    self = [super init];
    if (self)
    {
        for (int i = 0; i<numberOfCards; i++) {
            Card* card = [deck getRandomCard];
            if(card){
            [self.cards addObject:card];
            } else{
                self = nil;
                break;
            }
        }
    }
    return self;
}

-(Card *)cardAtIndex:(NSUInteger)index{
    if (index < [self.cards count]){
        Card *card =[self.cards objectAtIndex:index];
        return card;
    }else{
        return nil;
    }
}

-(void)chooseCardAtIndex:(NSUInteger)index{

    Card* cardi = [self.cards objectAtIndex:index];
    if (![cardi isMatched]){
        if ([cardi isSelected]) {
            cardi.selected = NO;
        }else {
            NSMutableArray* selectedCards = [NSMutableArray arrayWithArray:@[]];
            for (Card* card in self.cards) {
                if([card isSelected]){
                    [selectedCards addObject:card];
                }
            }
            if ([selectedCards count]){
                self.score -= TURN_PENALTY;
                for (Card* cardj in selectedCards) {
                    int matchScore = [cardi matchScore:@[cardj]];
                    if (matchScore){
                        self.score += matchScore * MATCH_SCORE_MULTIPLIER;
                        cardi.matched = YES;
                        cardj.matched = YES;
                    }else{
                        self.score -= MISMATCH_PENALTY;
                    }
                }
            }
            
        }
   
    }
}


@end
