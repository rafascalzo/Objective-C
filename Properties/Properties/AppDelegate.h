//
//  AppDelegate.h
//  Properties
//
//  Created by Rafael Scalzo on 24/12/19.
//  Copyright © 2019 Rafael Scalzo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>


@end

/*
 Objective-C Properties
 
 @property (attribute1, attribute2) type propertyName;
 
 @property (assign) float hisAge;
 
 assign specifier on float to just assign value that has passed them
 
 automatic create
 @implementation ClassName {
    float _hisAge;
 }
 
 -(void)setHisAge:(float)hisAge {
    _hisAge = hisAge;
 }
 -(float)hisAge {
    return _hisAge;
 }
 */

/*
 Property attributes
 // class
 strong        - Adds reference to keep object alive
 weak          - Object can disappear, become nil
 
 // attributes
 assign        - Normal assign, no reference
 copy          - Make copy on assign
 nonatomic     - Make not threadsafe, increase performance
 readwrite     - Create getter & setter default
 readonly      - Create just getter
 getter=<name> - Specify name of getter
 setter=<name> - Specify name of setter
 */

/*
 Dot notation
 
                        Getter              Setter
 Normal                 [calc hisName];     [calc setHisName:@"Rafael"];
 Dot Notation           calc.hisName;       calc.hisName = @"Rafael";
 
 //Dont use dot notation on regular methods thats looks like properties
 */
