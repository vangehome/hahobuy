//
//  HHTabBarViewController.m
//  haho
//
//  Created by ANDY on 16/4/12.
//  Copyright © 2016年 vangehome. All rights reserved.
//

#import "HHTabBarViewController.h"

@interface HHTabBarViewController ()

@end

@implementation HHTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIViewController* v=[[UIViewController alloc]init];
    [self AddTab:@"首页" vc:v];
    UIViewController* v2=[[UIViewController alloc]init];
    [self AddTab:@"分类" vc:v2];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)AddTab:(NSString*)Title vc:(UIViewController*) VC {
    
    VC.tabBarItem.title=Title;
    [self addChildViewController:VC];
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
