//
//  cardtests.m
//  match
//
//  Created by Brian on 24/11/2014.
//  Copyright (c) 2014 Grimsoft. All rights reserved.
//

@import UIKit;
@import XCTest;
#import "Card.h"

@interface cardtests : XCTestCase

@end

@implementation cardtests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)test1{
    // This is a functional test case to check that a test Card can be creted correctly
    Card* TestCard = [[Card alloc]init];
    TestCard.content = @"a";
    XCTAssertNotNil(TestCard, @"TestCard Not created");
    XCTAssertEqual(TestCard.isSelected, NO, @"TestCard Created Selected");
    XCTAssertEqual(TestCard.isMatched, NO, @"TestCard Created Matched");
    XCTAssertEqual(TestCard.content, @"a", @"TestCard Created with Wrong Content");
}

- (void)test2{
    
}

@end
