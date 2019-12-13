//
//  AppDelegate.m
//  BinaryFrameworkObjC
//
//  Created by Wang Wei on 2019/07/24.
//  Copyright © 2019 OneV's Den. All rights reserved.
//

#import "AppDelegate.h"
@import LineSDKObjC;

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options {
    
    if ([[LineSDKLoginManager sharedManager] application:app open:url options:options]) {
        return YES;
    }
    
    return NO;
}

@end
