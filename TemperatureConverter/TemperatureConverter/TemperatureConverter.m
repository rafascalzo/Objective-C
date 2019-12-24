//
//  TemperatureConverter.m
//  TemperatureConverter
//
//  Created by Fulltrack Mobile on 24/12/19.
//  Copyright © 2019 Rafael Scalzo. All rights reserved.
//

#import "TemperatureConverter.h"

@implementation TemperatureConverter {
    float _result;
}

-(float)convertCelsiusToKelvinWithA:(float)a {
    return a + 273.0;
}

-(float)convertCelsiusToFahrenheitWithA:(float)a {
    // C/5 = (f-32)/9
    // f - 32 = 9 * C / 5
    // f = (9/5 * C) + 32
    return (9.0/5.0*a) + 32.0;
}

-(float)convertFahrenheitToCelsiusWithA:(float)a {
    //C/5 = F-32 / 9
    //C = 5/9 * (F - 32)
    return (5.0/9.0) * (a - 32);
}

-(float)convertFahrenheitToKelvinWithA:(float)a {
    return _result;
}

-(float)convertKelvinToCelsiusWithA:(float)a {
    return a - 273;
}

-(float)convertKelvinToFahrenheitWithA:(float)a {
    return  _result;
}


@end
