//
//  ViewController.m
//  matchismo
//
//  Created by Brian on 13/11/2014.
//  Copyright (c) 2014 Grimsoft. All rights reserved.
//

#import "ViewController.h"
#import "PlayingDeck.h"
#import "Card.h"
#import "Game.h"

@interface ViewController ()

@property (strong, nonatomic) PlayingDeck* deck;
@property (strong, nonatomic) Card* card;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *CardsOnScreen;
@property (strong, nonatomic) Game* myGame;
@property (weak, nonatomic) IBOutlet UILabel *ScoreLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (Game*)myGame{
    if (!_myGame){
        _myGame = [[Game alloc]initWithCardCount:[self.CardsOnScreen count]
                                     usingDeck:[self createDeck]];
    }
    return _myGame;
}
                       
- (Deck*) createDeck{
   return [[PlayingDeck alloc] init];
}

- (IBAction)buttonDidGetPressed:(UIButton *)sender
{
    int chosenButtonIndex = [self.CardsOnScreen indexOfObject:sender];
    [self.myGame chooseCardAtIndex:chosenButtonIndex];
    [self UpdateUI];
    
}

-(void) UpdateUI{
    for (UIButton *cardButton in self.CardsOnScreen) {
        int index = [self.CardsOnScreen indexOfObject:cardButton];
        Card *card = [self.myGame cardAtIndex:index];
        [cardButton setTitle: [self titleForCard:card] forState:UIControlStateNormal];
        [cardButton setBackgroundImage:[self backgroundForCard:card] forState:UIControlStateNormal];
        cardButton.enabled = !card.isMatched;
        [self.ScoreLabel setText:[self scoreText]];
    }
}

-(NSString*)titleForCard:(Card *)card{
    return card.isSelected? card.content : nil;
}

-(UIImage *)backgroundForCard:(Card *)card{
    return [UIImage imageNamed: card.isSelected? @"cardFront" : @"cardBack"];
}
-(NSString*) scoreText{
    return [@"Score:" stringByAppendingFormat:@" %d", [self.myGame.score]];
}
         
@end
