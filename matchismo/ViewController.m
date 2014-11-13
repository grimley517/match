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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    PlayingDeck* MyDeck = [[PlayingDeck alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
};
- (IBAction)buttonDidGetPressed:(UIButton *)sender {
    if ([sender.currentTitle length]) {
        [sender setTitle: @"" forState: UIControlStateNormal];
        [sender setBackgroundImage:[UIImage imageNamed:@"cardBack"]
                          forState:UIControlStateNormal];
    }
    else
    {
        [sender setTitle:@"Hello" forState:UIControlStateNormal];
        [sender setBackgroundImage:[UIImage imageNamed:@"cardFront"]
                          forState:UIControlStateNormal];
    }
         
};

@end
