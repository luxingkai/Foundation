//
//  AppDelegate.m
//  Foundation
//
//  Created by tigerfly on 2020/11/14.
//  Copyright © 2020 tigerfly. All rights reserved.
//

#import "AppDelegate.h"
#import "PredicateFormatStringSyntex.h"
#import "Collections.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    Collections *vc = [Collections new];
    self.window.rootViewController = vc;
    [self.window makeKeyAndVisible];
    return YES;
}







@end
