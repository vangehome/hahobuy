//
//  HHShopcarViewController.m
//  haho
//
//  Created by ANDY on 16/4/15.
//  Copyright © 2016年 vangehome. All rights reserved.
//

#import "HHShopcarViewController.h"
#import "HHShopCarTableViewCell.h"

@interface HHShopcarViewController ()

@end

@implementation HHShopcarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     XMGBG;
    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    HHShopCarTableViewCell* cell=[[HHShopCarTableViewCell alloc]init];
    return cell;
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
