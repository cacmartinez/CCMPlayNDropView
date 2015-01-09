//
//  ViewController.m
//  CCMPlayNDropViewSample
//
//  Created by Compean on 28/11/14.
//  Copyright (c) 2014 Carlos Compean. All rights reserved.
//

#import "ViewController.h"
//#import "PlayNDropViewController.h"

#import <MaryPopin/UIViewController+MaryPopin.h>

@interface ViewController () 

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)pressedShowCCMPlayNDropView:(id)sender{
    UIViewController *popin = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"PlayNDropViewController"];
    popin.view.bounds = CGRectMake(0, 0, 300, 400);
    [popin setPopinTransitionStyle:BKTPopinTransitionStyleSnap];
    //[popin setPopinOptions:BKTPopinDisableAutoDismiss];
    BKTBlurParameters *blurParameters = [[BKTBlurParameters alloc] init];
    //blurParameters.alpha = 0.5;
    blurParameters.tintColor = [UIColor colorWithWhite:0 alpha:0.5];
    blurParameters.radius = 0.3;
    [popin setBlurParameters:blurParameters];
    [popin setPopinTransitionDirection:BKTPopinTransitionDirectionTop];
    //popin.presentingController = self;
    
    //Present popin on the desired controller
    //Note that if you are using a UINavigationController, the navigation bar will be active if you present
    // the popin on the visible controller instead of presenting it on the navigation controller
    [self presentPopinController:popin animated:YES completion:^{
        NSLog(@"Popin presented !");
    }];
}

@end
