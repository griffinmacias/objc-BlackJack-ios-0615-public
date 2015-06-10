//
//  FISPlayingCard.m
//  BlackJack
//
//  Created by Mason Macias on 6/10/15.
//  Copyright (c) 2015 Flatiron School. All rights reserved.
//

#import "FISPlayingCard.h"

@implementation FISPlayingCard


- (instancetype)initWithSuit:(NSString *)suit rank:(NSNumber *)rank
{
    self = [super init];
    
    if (self) {
        _suit = suit;
        _rank = rank;
    }
    
    return self;
}

- (instancetype)init
{
    return [self initWithSuit:@"" rank:@0];
}



- (NSString *)suit
{
    NSArray *possibleSuits = @[@"♥", @"♠", @"♣", @"♦"];
    
    if ([possibleSuits containsObject:_suit]) {
        return _suit;
    } else {
        return @"";
    }
}

-(NSNumber *)rank
{
    NSArray *possibleRanks = @[@1, @2, @3, @4, @5, @6, @7, @8, @9, @10, @11, @12, @13];
    
    if ([possibleRanks containsObject:_rank]) {
        return _rank;
    } else {
        return @0;
    }
}















@end
