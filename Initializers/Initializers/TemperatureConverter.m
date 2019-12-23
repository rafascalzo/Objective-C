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

@end
