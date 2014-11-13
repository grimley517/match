//
//  Card.m
//  matchismo
//
//  Created by Brian on 13/11/2014.
//  Copyright (c) 2014 Grimsoft. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int) matchScore: (NSArray *) otherCards{
    int score = 0;
    for (Card other in otherCards) {
        if ([other.content isEqualToString: ]self.content) {
            score++;
        }
    }
    return score;
}

@end
