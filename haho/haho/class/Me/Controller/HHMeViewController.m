//
//  HHMeViewController.m
//  haho
//
//  Created by ANDY on 16/4/15.
//  Copyright © 2016年 vangehome. All rights reserved.
//

#import "HHMeViewController.h"
#import "HHLoginViewController.h"
#import "HHNavigationController.h"
#import "AppDelegate.h"

@interface HHMeViewController ()

@end

@implementation HHMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:YES];
     XMGBG;
    // Do any additional setup after loading the view.
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)show:(id)sender {
    HHLoginViewController* viewLogin=[[HHLoginViewController alloc] init];
    HHNavigationController* nav=[[HHNavigationController alloc] initWithRootViewController:viewLogin];
    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    [delegate.window.rootViewController presentViewController:nav animated:YES completion:nil];

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
