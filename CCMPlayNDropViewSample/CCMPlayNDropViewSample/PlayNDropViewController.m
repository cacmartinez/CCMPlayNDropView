//
//  PlayNDropViewController.m
//  CCMPlayNDropViewSample
//
//  Created by Compean on 29/11/14.
//  Copyright (c) 2014 Carlos Compean. All rights reserved.
//

#import "PlayNDropViewController.h"
#import <MaryPopin/UIViewController+MaryPopin.h>

@interface PlayNDropViewController ()

@end

@implementation PlayNDropViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)CCMPlayNDropViewWillStartDismissAnimationWithDynamics:(CCMPlayNDropView *)view{
    self.view.superview.userInteractionEnabled = NO;
    self.view.userInteractionEnabled = NO;
}

-(void)CCMPlayNDropViewDidFinishDismissAnimationWithDynamics:(CCMPlayNDropView *)view{
    self.view.superview.userInteractionEnabled = YES;
    CGRect frame = self.view.frame;
    frame.origin.y = -1000;
    self.view.frame = frame;
    [self.parentViewController dismissCurrentPopinControllerAnimated:YES];
    
}

//-(void)dismissWithoutAnimation{
//    [self dismissCurrentPopinControllerAnimated:NO];
//}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
