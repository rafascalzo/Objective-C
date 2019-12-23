//
//  DateCalculator.h
//  Initializers
//
//  Created by Rafael Scalzo on 23/12/19.
//  Copyright © 2019 Rafael Scalzo. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DateCalculator : NSObject

@property (assign) float hisAge;
@property (strong, nonatomic) NSString *hisName;

- (BOOL)shouldHeDateIfHerAgeIs:(float)herAge;
- (instancetype)initWithHisAge:(float)hisAge hisName:(NSString*) hisName;

@end

NS_ASSUME_NONNULL_END
