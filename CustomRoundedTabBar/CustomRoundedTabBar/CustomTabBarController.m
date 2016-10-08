//
//  CustomTabBarController.m
//  CustomRoundedTabBar
//
//  Created by arappdev on 10/8/16.
//  Copyright © 2016 arappdev. All rights reserved.
//

#import "CustomTabBarController.h"

@interface CustomTabBarController ()

@end

@implementation CustomTabBarController

- (void)viewDidLoad {
    
    
    [[UITabBar appearance] setBarTintColor:[UIColor clearColor]];
    self.tabBarController.tabBar.translucent = YES;
    UIImage *image = [self imageWithImage:[UIImage imageNamed:@"circle.png"]scaledToSize:CGSizeMake(self.tabBar.frame.size.height+1, self.tabBar.frame.size.height+1)];
    UIEdgeInsets edgeInsets;
    edgeInsets.left = image.size.width/2;
    edgeInsets.top = 0.0f;
    edgeInsets.right = image.size.width/2; //this will be the constant portion in your image
    edgeInsets.bottom = 0.0f;
    image = [image resizableImageWithCapInsets:edgeInsets];

    [[UITabBar appearance] setBackgroundImage:image];
    
   
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (UIImage *)imageWithImage:(UIImage *)image scaledToSize:(CGSize)newSize {
    //UIGraphicsBeginImageContext(newSize);
    // In next line, pass 0.0 to use the current device's pixel scaling factor (and thus account for Retina resolution).
    // Pass 1.0 to force exact pixel size.
    UIGraphicsBeginImageContextWithOptions(newSize, NO, 0.0);
    [image drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
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
