//
//  ViewController.m
//  BinaryFrameworkObjC
//
//  Created by Wang Wei on 2019/07/24.
//  Copyright © 2019 OneV's Den. All rights reserved.
//

#import "ViewController.h"
@import LineSDK;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[LineSDKLoginManager sharedManager] setupWithChannelID:@"1234" universalLinkURL:nil];
    [[LineSDKLoginManager sharedManager] loginWithPermissions:nil inViewController:nil options:nil completionHandler:^(LineSDKLoginResult * r, NSError * e) {
        NSLog(@"%@", e);
    }];
}


@end
