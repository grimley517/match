//
//  Game.h
//  match
//
//  Created by Brian on 15/11/2014.
//  Copyright (c) 2014 Grimsoft. All rights reserved.
//

@import Foundation;
#import "Card.h"
#import "Deck.h"


@interface Game : NSObject

//designated Initialiser
- (instancetype)initWithCardCount:(NSUInteger) numberOfCards
                        usingDeck:(Deck*) deck;

- (void)chooseCardAtIndex:(NSUInteger)index;
- (Card*)cardAtIndex:(NSUInteger) index;

@property (nonatomic, readonly) NSUInteger score;

@end
