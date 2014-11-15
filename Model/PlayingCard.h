//
//  PlayingCard.h
//  matchismo
//
//  Created by Brian on 13/11/2014.
//  Copyright (c) 2014 Grimsoft. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger value;

+ (NSUInteger) maxValue;
+ (NSArray *) allowedSuits;


@end
