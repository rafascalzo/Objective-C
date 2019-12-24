//
//  TemperatureConverter.m
//  Initializers
//
//  Created by Rafael Scalzo on 23/12/19.
//  Copyright © 2019 Rafael Scalzo. All rights reserved.
//

#import "TemperatureConverter.h"

@implementation TemperatureConverter

- (instancetype)initWithLocation:(NSString *)location {
    
    if ((self = [super init])) {
        _location = location;
    }
    return self;
}
- (float)getTemperature {
    if ([_location  isEqual: @"London"]) {
        return 18;
    }
    if ([_location  isEqual: @"Russia"]) {
        return -7;
    }
    if ([_location  isEqual: @"Brasil"]) {
        return 38;
    }
    if ([_location  isEqual: @"China"]) {
        return 13;
    }
    return 0;
}

@end
