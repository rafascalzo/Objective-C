//
//  DateCalculator.h
//  Properties
//
//  Created by Rafael Scalzo on 24/12/19.
//  Copyright © 2019 Rafael Scalzo. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DateCalculator : NSObject

@property (assign) float hisAge;
@property (strong, nonatomic) NSString *hisName;

-(BOOL)shouldDateIfHerAgeIs:(float)herAge;

@end

NS_ASSUME_NONNULL_END
