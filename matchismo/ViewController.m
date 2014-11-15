//
//  ViewController.m
//  matchismo
//
//  Created by Brian on 13/11/2014.
//  Copyright (c) 2014 Grimsoft. All rights reserved.
//

#import "ViewController.h"
#import "PlayingDeck.h"

@interface ViewController ()

@property(strong, nonatomic) Deck* deck;
@property(strong, nonatomic) Card* card;

@end

@implementation ViewController

- (Card *) getCard{
    //Convienience method to speed up getting a card
    return [self.deck getRandomCard];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.deck = [[PlayingDeck alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonDidGetPressed:(UIButton *)sender
{
    if ([sender.currentTitle length]) {
        //if there is a card shown, turn it over, if the deck is empty hide the button
        [sender setTitle: @"" forState: UIControlStateNormal];
        [sender setBackgroundImage:[UIImage imageNamed:@"cardBack"]
                          forState:UIControlStateNormal];
    }else{
        //Otherwise, draw a card, and show it
        self.card = [self getCard];
        if (self.card){
        [sender setTitle:[self.card content] forState:UIControlStateNormal];
        [sender setBackgroundImage:[UIImage imageNamed:@"cardFront"]
                          forState:UIControlStateNormal];
        }
    }
         
}

@end
