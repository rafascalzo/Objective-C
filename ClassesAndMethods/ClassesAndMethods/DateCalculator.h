//
//  DateCalculator.h
//  ClassesAndMethods
//
//  Created by Rafael Scalzo on 24/12/19.
//  Copyright © 2019 Rafael Scalzo. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DateCalculator : NSObject
// put public methods here

-(void)setHisAge:(float)hisAge;
-(float)hisAge;
-(void)setHisName:(NSString*)hisName;
-(NSString*)hisName;

-(BOOL)shouldHeDateIfHerAgeIs:(float)herAge;

@end

NS_ASSUME_NONNULL_END
