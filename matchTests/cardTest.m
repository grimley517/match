//
//  cardTest.m
//  match
//
//  Created by Brian on 25/11/2014.
//  Copyright (c) 2014 Grimsoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Card.h"

@interface cardTest : XCTestCase

@end

@implementation cardTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)test2 {
    // Matching checks on card class
    NSArray* contents = @[@"a", @"b", @"apple"];
    NSMutableArray* OtherCards = [NSMutableArray arrayWithArray: @[]];//will contain other cards
    Card* testCard = [[Card alloc] init];
    testCard.content = @"a";
    for (NSString* cardContent in contents){
        Card* otherCard = [[Card alloc] init];
        otherCard.content = cardContent;
        [OtherCards addObject:otherCard];
    }
    NSMutableArray* matchScores = [NSMutableArray arrayWithArray:@[]];
    for (int i = 0; i<[OtherCards count];i++){
        int score =[testCard matchScore:@[OtherCards[i]]];
        [matchScores addObject:[NSNumber numberWithInt:score]];
    }
    NSArray* ExpectedScores = @[@1,@0,@0];
    for (int i = 0; i<[matchScores count];i++){
        XCTAssertEqual(matchScores[i], ExpectedScores[i], @"The score at index %d didnt macth up", i);
    }
        
}



@end
