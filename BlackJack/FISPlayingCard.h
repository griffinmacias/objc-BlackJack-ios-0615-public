//
//  FISPlayingCard.h
//  BlackJack
//
//  Created by Mason Macias on 6/10/15.
//  Copyright (c) 2015 Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISPlayingCard : NSObject


@property (nonatomic, strong) NSString *suit;
@property (nonatomic, strong) NSNumber *rank;


- (instancetype)initWithSuit:(NSString *)suit rank:(NSNumber *)rank;




@end
