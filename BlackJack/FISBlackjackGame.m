//
//  FISBlackjackGame.m
//  BlackJack
//
//  Created by Mason Macias on 6/10/15.
//  Copyright (c) 2015 Flatiron School. All rights reserved.
//

#import "FISBlackjackGame.h"
#import "FISPlayingCardDeck.h"
@implementation FISBlackjackGame

- (instancetype)init
{
    self = [super init];
    if (self) {
       
        _hand = [[NSMutableArray alloc] init];
        _handScore = self.handScore;
        _playingCardDeck = [[FISPlayingCardDeck alloc] init];
        _isBlackjack = self.isBusted;
        _isBusted = self.isBusted;
        
    }
    return self;
}

- (void)deal
{
    
    FISPlayingCard *firstCard = [self.playingCardDeck drawRandomCard];
    [self.hand addObject:firstCard];
    
    FISPlayingCard *secondCard = [self.playingCardDeck drawRandomCard];
    [self.hand addObject:secondCard];
    

}
- (void)hit
{
    if ([self.hand count] && !self.isBusted) {
        
        FISPlayingCard *hitCard = [self.playingCardDeck drawRandomCard];
        
        [self.hand addObject:hitCard];
}
  
    
}

-(NSNumber *)handScore
{
    NSNumber *scoreOfHand = @0;
    NSMutableArray *aceChecker = [NSMutableArray array];
    
    for (FISPlayingCard *card in self.hand) {
        if ([card.rank  isEqual: @11]) {
            card.rank = @10;
        }
        
        if ([card.rank  isEqual: @12]) {
            card.rank = @10;
        }
        
        if ([card.rank  isEqual: @13]) {
            card.rank = @10;
        }
        
        [aceChecker addObject:card.rank];
        
        scoreOfHand = @(card.rank.integerValue + scoreOfHand.integerValue);
    }
        
        for (NSNumber *scoreOfCard in aceChecker) {
            
            if ([scoreOfCard isEqual: @1] && scoreOfHand.integerValue <= 11) {
                scoreOfHand = @(scoreOfHand.integerValue + 10);
            }
            
            if ([scoreOfCard isEqual:@11] && scoreOfHand.integerValue > 11) {
                scoreOfHand = @(scoreOfHand.integerValue - 10);
            }

        }
    
    return scoreOfHand;
}

- (BOOL)isBusted
{
    if (self.handScore.integerValue > 21) {
        return YES;
    } else {
        return NO;
    }
}

- (BOOL)isBlackjack
{
    if (self.handScore.integerValue == 21) {
        return YES;
    } else {
        return NO;
    }
}

@end
