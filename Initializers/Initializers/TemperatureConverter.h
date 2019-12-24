//
//  TemperatureConverter.h
//  Initializers
//
//  Created by Rafael Scalzo on 23/12/19.
//  Copyright © 2019 Rafael Scalzo. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TemperatureConverter : NSObject

@property (strong, nonatomic)NSString *location;

- (instancetype)initWithLocation:(NSString*)location;
- (float)getTemperature;

@end

NS_ASSUME_NONNULL_END
