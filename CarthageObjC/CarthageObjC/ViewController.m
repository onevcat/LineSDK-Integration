//
//  ViewController.m
//  CarthageObjC
//
//  Created by Wang Wei on 2018/8/29.
//  Copyright © 2018年 LINE Corp. All rights reserved.
//

#import "ViewController.h"
@import LineSDKObjC;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    NSSet *permission = [NSSet setWithObjects:
                         [LineSDKLoginPermission profile],
                         [LineSDKLoginPermission openID],
                         nil];
    [[LineSDKLoginManager sharedManager]
        loginWithPermissions:permission
            inViewController:self
                     options:nil
           completionHandler:^(LineSDKLoginResult *result, NSError *error) {
               if (result) {
                   NSLog(@"User Name: %@", result.userProfile.displayName);
               } else {
                   NSLog(@"Error: %@", error);
               }
           }
     ];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
