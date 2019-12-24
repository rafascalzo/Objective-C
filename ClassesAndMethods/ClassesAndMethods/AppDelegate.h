//
//  AppDelegate.h
//  ClassesAndMethods
//
//  Created by Rafael Scalzo on 24/12/19.
//  Copyright © 2019 Rafael Scalzo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>


@end

/*
 
 Class syntax
 
 -Header file
 className.h
 
 #import "AnyHeaderFile.h"
 
 @interface ClassName: SuperClass
 
 // define public properties
 // define public methods
 
 @end
 
 -Implementation file
 className.m
 
 #import "YourClassName.h"
 
 @implementation ClassName
 
 // implement methods
 
 @end
 
 ----------- extending class
 
 @interface ClassName()
 // define private properties
 // define private methods
 @end
 
 @implementation ClassName
 
 // implement methods
 
 @end
 
 
 ------------ defining private instance variables
 
 @implementation ClassName {
    // define private instance variables
 }
 @end
 */

/*
 METHOD NAME SYNTAX
 
 Instance method (-) (return type) method name part : (parameter type) parameter name
 or class method (+) (return type) method name part : (parameter type) parameter name
 
 - (type)doIt;
 - (type)doItWithA:(type)a;
 - (type)doItWithA:(type)a b:(type)b;
 */

/*
 CALLING A METHOD
 ClassName *myObject = [[ClassName alloc] init];
 -> alloc = allocate memory
 -> init = Call a method (init) to set up the object
 
 [myObject doIt];
 [myObject doItWithA:a];
 [myObject doItWithA:a b:b];
 
 Send myObject the message doIt
 Sending a message to nil does not crash!
 */

