//
//  Vicky.h
//  Protocol_And_Delegates
//
//  Created by Rafael VSM on 26/01/20.
//  Copyright © 2020 Rafael VSM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Freckles.h"
#import "Stephanie.h"

NS_ASSUME_NONNULL_BEGIN

@interface Vicky : NSObject <FrecklesDelegate, StephanieDelegate>

- (void)frecklesDidSmackLips:(Freckles *)freckles;
- (void)frecklesDidLookHopeful:(Freckles *)freckles;
- (void)stephanieDidLookSad:(Stephanie *)stephanie;

@end

NS_ASSUME_NONNULL_END
