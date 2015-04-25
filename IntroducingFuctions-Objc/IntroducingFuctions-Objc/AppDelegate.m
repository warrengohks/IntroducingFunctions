//
//  AppDelegate.m
//  IntroducingFuctions-Objc
//
//  Created by Joshua Howland on 8/14/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
            

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    
    NSString *myName = @"Warren";
    int numberOfDays = 4;
                        
    [self printIntroductions: myName];
    [self countDownTillIntroduction: numberOfDays];
       
    return YES;
}

-(void) countDownTillIntroduction:(int) numberOfDays{
    if (numberOfDays == 0){
        NSLog (@"The time has come");
    }   else {
            NSLog (@"%d days left until introductions", numberOfDays);
            int oneLessDay = numberOfDays - 1;
            [self countDownTillIntroduction: oneLessDay];
    }
}

                        
-(void)printIntroductions:(NSString*)name{
    //declare introduction variable with NSString type
    NSString *introduction;
                            
    //declare japaneseIntroduction with NSString type
    NSString *japaneseintroduction;
// Set introduction using stringWithFormat (or format: in Swift) class method "My name is %@", myName
                            introduction = [NSString stringWithFormat:@"My name is %@", name];
                            
// Set japanese introduction using stringByAppendingString instance method by appending " to moushimasu"
japaneseintroduction = [introduction stringByAppendingString:@" to moushimasu"];
                            
// print introduction and japanese Introduction
NSLog(@"%@", introduction);
NSLog(@"%@", japaneseintroduction);
                            
                            
                            //add new function called printIntroductions
                            // The function should accept an NSString as a parameter called name
                            //

                            
                        }
    
   



@end
