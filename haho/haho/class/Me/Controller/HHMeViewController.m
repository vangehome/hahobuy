//
//  HHMeViewController.m
//  haho
//
//  Created by ANDY on 16/4/15.
//  Copyright © 2016年 vangehome. All rights reserved.
//

#import "HHMeViewController.h"
#import "HHLoginViewController.h"
@interface HHMeViewController ()

@end

@implementation HHMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     XMGBG;
    HHLoginViewController* viewLogin=[[HHLoginViewController alloc] init];
    [self presentViewController:viewLogin animated:YES completion:^{
        //
        XMGLogFun;
        
    }];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
