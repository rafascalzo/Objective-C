//
//  DateCalculator.m
//  Initializers
//
//  Created by Rafael Scalzo on 23/12/19.
//  Copyright © 2019 Rafael Scalzo. All rights reserved.
//

#import "DateCalculator.h"

@implementation DateCalculator

- (instancetype)initWithHisAge:(float)hisAge hisName:(NSString *)hisName {
    if ((self = [super init])) {
        _hisAge = hisAge;
        _hisName = hisName;
        
        //[self setHisAge:hisAge];
        //self.hisAge = hisAge;
        //when using a property like this you`re calling a setter (you cna override it later, so things this way are strange)
    }
    return self;
}

- (BOOL)shouldHeDateIfHerAgeIs:(float)herAge {
    float minAgeToDate = _hisAge / 2 + 7;
    return herAge > minAgeToDate;
}

@end
