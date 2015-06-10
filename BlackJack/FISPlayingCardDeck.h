//
//  FISPlayingCardDeck.h
//  BlackJack
//
//  Created by Mason Macias on 6/10/15.
//  Copyright (c) 2015 Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>
@class FISPlayingCard;

@interface FISPlayingCardDeck : NSObject

@property (nonatomic, strong) NSMutableArray *cards;

- (FISPlayingCard *)drawRandomCard;
- (NSMutableArray *)createDeck;










@end
