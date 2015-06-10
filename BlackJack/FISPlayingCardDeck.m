//
//  FISPlayingCardDeck.m
//  BlackJack
//
//  Created by Mason Macias on 6/10/15.
//  Copyright (c) 2015 Flatiron School. All rights reserved.
//

#import "FISPlayingCardDeck.h"
#import "FISPlayingCard.h"

@implementation FISPlayingCardDeck

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        _cards = [self createDeck];
    }
    
    return self;
}


- (FISPlayingCard *)drawRandomCard
{
    
    NSInteger random = arc4random_uniform(52);
    
    FISPlayingCard *randomCard = [self.cards objectAtIndex:random];
    
    if (randomCard) {
        [self.cards removeObject:randomCard];
    }
    
    return randomCard;
}

- (NSMutableArray *)createDeck
{
    
    NSMutableArray *deckOfCards = [[NSMutableArray alloc] init];
    
    //Make 52 Cards
    //Each rank has 4 suits
    for (NSInteger i = 1; i <= 52; i++) {
        if (i <= 13) {
           FISPlayingCard *card = [[FISPlayingCard alloc] initWithSuit:@"♥" rank:@(i)];
            
           [deckOfCards addObject:card];
        }
        
       else if (i > 13 && i <= 26) {
            FISPlayingCard *card = [[FISPlayingCard alloc] initWithSuit:@"♠" rank:@(i -13)];
        
            [deckOfCards addObject:card];
        }
        
       else if (i > 26 && i <= 39) {
            FISPlayingCard *card = [[FISPlayingCard alloc] initWithSuit:@"♣" rank:@(i -26)];
  
            [deckOfCards addObject:card];
        }
        
       else if (i > 39 && i <= 52) {
            FISPlayingCard *card = [[FISPlayingCard alloc] initWithSuit:@"♦" rank:@(i - 39)];

            [deckOfCards addObject:card];
        }
    }

    return deckOfCards;
}













@end
