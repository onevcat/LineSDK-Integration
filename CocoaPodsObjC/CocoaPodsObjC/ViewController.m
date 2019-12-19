//
//  ViewController.m
//  CocoaPodsObjC
//
//  Created by Wang Wei on 2018/8/29.
//  Copyright © 2018年 LINE Corp. All rights reserved.
//

#import "ViewController.h"
@import LineSDK;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[LineSDKLoginManager sharedManager]
     loginWithPermissions:[NSSet setWithObject:LineSDKLoginPermission.profile]
     inViewController:self
     completionHandler:^(LineSDKLoginResult *result, NSError *error) {
         NSLog(@"%@", error);
     }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
