//
//  HHNavigationController.m
//  haho
//
//  Created by ANDY on 16/4/15.
//  Copyright © 2016年 vangehome. All rights reserved.
//

#import "HHNavigationController.h"

@interface HHNavigationController ()

@end

@implementation HHNavigationController

+(void)initialize{
    [[UINavigationBar appearanceWhenContainedIn:[self class], nil]  setBackgroundColor:XMGRGBCOLOR(238, 238, 238)];
    
    
}
-(void)viewDidLoad{
    [super viewDidLoad];
    
}
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    if (self.childViewControllers.count>0) {
        UIButton* but=[UIButton buttonWithType:UIButtonTypeCustom];
        [but setImage:[UIImage imageNamed:@"navigationButtonReturn" ] forState:UIControlStateNormal];
        [but setImage:[UIImage imageNamed:@"navigationButtonReturnClick" ] forState:UIControlStateHighlighted];
        [but setTitle:@"返回" forState:UIControlStateNormal];
        [but sizeToFit];
        
        //边距缩小
        but.contentEdgeInsets=UIEdgeInsetsMake(0, -10, 0, 0);
        but.contentHorizontalAlignment=UIControlContentHorizontalAlignmentLeft;
        [but setTitleColor:[UIColor blackColor] forState:UIControlStateNormal ];
        [but setTitleColor:XMGRGBCOLOR(233 ,0, 0) forState:UIControlStateHighlighted];
        [but addTarget:self action:@selector(popme) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem* item=[[UIBarButtonItem alloc] initWithCustomView:but];
        [viewController.navigationItem setLeftBarButtonItem :item];
        viewController.hidesBottomBarWhenPushed=YES;
    }
    
    [super pushViewController:viewController animated:animated];
    
    
}
-(void)popme{
    [self popToRootViewControllerAnimated:YES];
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
