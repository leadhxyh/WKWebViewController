//
//  BaseNavigationController.m
//  BANYAN
//
//  Created by BANYAN on 2017/1/22.
//  Copyright © 2017年 GREEN BANYAN. All rights reserved.
//

#import "BaseNavigationController.h"
#import "UIBarButtonItem+Extension.h"

@interface BaseNavigationController ()

@end

@implementation BaseNavigationController

-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
//    if (self.viewControllers.count > 0) {
//        viewController.hidesBottomBarWhenPushed = YES;
//        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(back) image:@"header_back_icon" highImage:@"header_back_icon_highlight"];
//    }
//    [super pushViewController:viewController animated:animated];
    
    if (self.viewControllers.count > 0 && self.viewControllers.count < 2) {

        //***
        viewController.hidesBottomBarWhenPushed = YES;
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(back) image:@"header_back_icon" highlightImage:@"header_back_icon_highlight"];
        //;
    }else if (self.viewControllers.count >= 2) {
        
        //***
        viewController.hidesBottomBarWhenPushed = YES;
        
        UIBarButtonItem * back = [UIBarButtonItem itemWithTarget:self action:@selector(back) image:@"header_back_icon" highlightImage:@"header_back_icon_highlight"];
        
        UIBarButtonItem * dismiss = [UIBarButtonItem itemWithTarget:self action:@selector(dismiss) title:@"关闭" titleColor:[UIColor whiteColor]];
        dismiss.tintColor = [UIColor blackColor];
        
        viewController.navigationItem.leftBarButtonItems = [NSArray arrayWithObjects:back,dismiss, nil];
        //;
        
    }
    
    [super pushViewController:viewController animated:animated];
    
}

-(void)back{
    [self popViewControllerAnimated:YES];
}

-(void)dismiss{
    [self popToRootViewControllerAnimated:YES];
}

@end
