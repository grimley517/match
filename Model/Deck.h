//
//  Deck.h
//  matchismo
//
//  Created by Brian on 13/11/2014.
//  Copyright (c) 2014 Grimsoft. All rights reserved.
//

@import Foundation;
#import "Card.h"

@interface Deck : NSObject

- (void) insertCard:(Card *) card atTop: (BOOL) top;
- (void) insertCard:(Card *) card;
- (Card *) getRandomCard;

@end
