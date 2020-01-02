//
//  DateCalculator.m
//  Properties
//
//  Created by Rafael Scalzo on 24/12/19.
//  Copyright © 2019 Rafael Scalzo. All rights reserved.
//

#import "DateCalculator.h"

@implementation DateCalculator

-(BOOL)shouldDateIfHerAgeIs:(float)herAge {
    float minimumAgeToDage = _hisAge / 2 + 7;
    return  herAge > minimumAgeToDage;
}

@end
