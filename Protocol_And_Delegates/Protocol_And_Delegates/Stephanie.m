//
//  Stephanie.m
//  Protocol_And_Delegates
//
//  Created by Rafael VSM on 26/01/20.
//  Copyright © 2020 Rafael VSM. All rights reserved.
//

#import "Stephanie.h"

@implementation Stephanie

- (void)frecklesDidSmackLips:(Freckles *)freckles {
    NSLog(@"Ok Freckles, let's go outside!");
}
- (void)frecklesDidLookHopeful:(Freckles *)freckles {
    NSLog(@"Here ya go Freckles, here's a biscuit!");
}

- (void)isSad {
    [_delegate stephanieDidLookSad:self];
}
@end
