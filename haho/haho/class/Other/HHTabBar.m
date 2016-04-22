//
//  HHTabBar.m
//  haho
//
//  Created by ANDY on 16/4/15.
//  Copyright © 2016年 vangehome. All rights reserved.
//

#import "HHTabBar.h"

@implementation HHTabBar

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
   
   
    
   // self.tintColor=[UIColor ];
}

-(instancetype)initWithFrame:(CGRect)frame{
    if (self=[super initWithFrame:frame]) {
        
        
        [self setBackgroundColor:XMGRGBCOLOR(249, 249, 249)];
        //[self setBackgroundImage:[UIImage imageNamed:@"tabbar-light"]];
        
        
    }
    return self;
}

@end
