//
//  TemperatureConverter.h
//  TemperatureConverter
//
//  Created by Fulltrack Mobile on 24/12/19.
//  Copyright © 2019 Rafael Scalzo. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TemperatureConverter : NSObject

@property (strong, nonatomic) NSString * location;

-(float)convertCelsiusToFahrenheitWithA:(float)a;

-(float)convertCelsiusToKelvinWithA:(float)a;

-(float)convertFahrenheitToCelsiusWithA:(float)a;

-(float)convertFahrenheitToKelvinWithA:(float)a;

-(float)convertKelvinToCelsiusWithA:(float)a;

-(float)convertKelvinToFahrenheitWithA:(float)a;

@end

NS_ASSUME_NONNULL_END
