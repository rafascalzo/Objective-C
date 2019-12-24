//
//  DateCalculator.m
//  ClassesAndMethods
//
//  Created by Rafael Scalzo on 24/12/19.
//  Copyright © 2019 Rafael Scalzo. All rights reserved.
//

#import "DateCalculator.h"

@implementation DateCalculator {
    float _hisAge;
    NSString* _hisName;
}
// implement methods here

-(void)setHisAge:(float)hisAge {
    _hisAge = hisAge;
}
-(float)hisAge {
    return _hisAge;
}
-(void)setHisName:(NSString*)hisName {
    _hisName = hisName;
}
-(NSString*)hisName {
    return _hisName;
}
-(BOOL)shouldHeDateIfHerAgeIs:(float)herAge {
    float minAgeToDate = _hisAge / 2 + 7;
    return herAge > minAgeToDate;
}

@end
