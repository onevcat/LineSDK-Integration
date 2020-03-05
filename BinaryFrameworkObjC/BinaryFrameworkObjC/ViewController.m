//
//  ViewController.m
//  BinaryFrameworkObjC
//
//  Created by Wang Wei on 2019/07/24.
//  Copyright © 2019 OneV's Den. All rights reserved.
//

#import "ViewController.h"
@import LineSDKObjC;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[LineSDKLoginManager sharedManager] setupWithChannelID:@"{CHANNEL_ID}" universalLinkURL:nil];
    NSSet *permissions = [NSSet setWithArray:@[LineSDKLoginPermission.profile, LineSDKLoginPermission.openID]];
    [[LineSDKLoginManager sharedManager] loginWithPermissions:permissions inViewController:nil completionHandler:^(LineSDKLoginResult * r, NSError * e) {
        if (e != nil) {
            NSLog(@"Error: %@", e);
        } else {
            NSLog(@"Login Done: %@", r.accessToken.value);
        }
    }];
}


@end
