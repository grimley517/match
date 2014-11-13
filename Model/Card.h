//
//  Card.h
//  matchismo
//
//  Created by Brian on 13/11/2014.
//  Copyright (c) 2014 Grimsoft. All rights reserved.
//

@import Foundation;

@interface Card : NSObject

@property (strong, nonatomic) NSString* content;

@property (nonatomic, getter = isMatched) BOOL matched;
@property (nonatomic, getter = isSelected) BOOL selected;

- (int) matchScore: (NSArray *) otherCards;

@end
