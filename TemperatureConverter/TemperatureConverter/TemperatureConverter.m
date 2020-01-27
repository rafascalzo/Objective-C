//
//  TemperatureConverter.m
//  TemperatureConverter
//
//  Created by Rafael VSM on 24/12/19.
//  Copyright © 2019 Rafael Scalzo. All rights reserved.
//

#import "TemperatureConverter.h"

@implementation TemperatureConverter {
    float _result;
}

-(float)convertCelsiusToKelvinWithA:(float)a {
    return a + 273.15;
}

-(float)convertCelsiusToFahrenheitWithA:(float)a {
    // C/5 = (f-32)/9
    // f - 32 = 9 * C / 5
    // f = (9/5 * C) + 32
    return ((9.0/5.0) * a) + 32.0;
}

-(float)convertFahrenheitToCelsiusWithA:(float)a {
    //C/5 = F-32 / 9
    //C = 5/9 * (F - 32)
    return (5.0/9.0) * (a - 32.0);
}

-(float)convertFahrenheitToKelvinWithA:(float)a {
    return a + 459.67;
}

-(float)convertKelvinToCelsiusWithA:(float)a {
    return a - 273.15;
}

-(float)convertKelvinToFahrenheitWithA:(float)a {
    return a -459.67;
}

@end
