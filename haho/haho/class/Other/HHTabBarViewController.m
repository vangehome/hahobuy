//
//  HHTabBarViewController.m
//  haho
//
//  Created by ANDY on 16/4/12.
//  Copyright © 2016年 vangehome. All rights reserved.
//

#import "HHTabBarViewController.h"
#import "HHNavigationController.h"
#import "HHTabBar.h"
#import "HHDiscoverViewController.h"
#import "HHIndexViewController.h"
#import "HHMeViewController.h"
#import "HHShopcarViewController.h"
#import "HHCategoryViewController.h"
@interface HHTabBarViewController ()

@end

@implementation HHTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //============================设置tab属性=================================
    
    NSMutableDictionary* dic=[NSMutableDictionary dictionary];
    dic[NSFontAttributeName]=[UIFont systemFontOfSize:12];
    dic[NSForegroundColorAttributeName]=[UIColor whiteColor];
    
    
    NSMutableDictionary* selectdic=[NSMutableDictionary dictionary];
    selectdic[NSFontAttributeName]=[UIFont systemFontOfSize:12];
    selectdic[NSForegroundColorAttributeName]=[UIColor whiteColor];
    
    UITabBarItem* item=[UITabBarItem appearance];//appearance 全局从设置tabbar属性,不需要再一个个更改
    
    [item setTitleTextAttributes:dic forState:UIControlStateNormal];
    [item setTitleTextAttributes:selectdic forState:UIControlStateSelected];
    [self setValue:[[HHTabBar alloc] init] forKeyPath:@"tabBar"];
    
    //属性设置结束

    //添加tabitem
    [self addtab:[[HHIndexViewController alloc] init] title:@"" image:@"" selectImg:@""];
    [self addtab:[[HHCategoryViewController alloc] init] title:@"分类" image:@"" selectImg:@""];
    [self addtab:[[HHShopcarViewController alloc] init] title:@"发现" image:@"" selectImg:@""];
    [self addtab:[[HHDiscoverViewController alloc] init] title:@"购物车" image:@"" selectImg:@""];
    [self addtab:[[HHMeViewController alloc] init] title:@"我" image:@"" selectImg:@""];
    //tabitem end
    
     
}


//添加子控制器
-(void)addtab:(UIViewController*)vc title:(NSString*) title image:(NSString*)image selectImg:(NSString*)selectImg{
    
    vc.tabBarItem.title=title;
    vc.navigationItem.title=title;
    vc.tabBarItem.image=[UIImage imageNamed:image];
    
    vc.tabBarItem.selectedImage=[UIImage imageNamed:selectImg];
    //一旦调用view 就创建了控制器
    //vc.view.backgroundColor=[UIColor colorWithRed:(223)/255.0  green:(223)/255.0 blue:(223)/255.0 alpha:1];
    //XMGLogFun;
    
    HHNavigationController* nav=[[HHNavigationController alloc] initWithRootViewController:vc];
    
    [self addChildViewController:nav];
    
    
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
