//
//  ViewController.m
//  GA_Test
//
//  Created by LeeChia-Pei on 2016/10/18.
//  Copyright © 2016年 LeeChia-Pei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.screenName = @"Google Analytics Test";
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"viewDidLoad");
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    //GA
    self.tracker = [GAI sharedInstance].defaultTracker;
    [self.tracker set:kGAIScreenName value:self.screenName];
    [self.tracker send:[[GAIDictionaryBuilder createScreenView]build]];
    NSLog(@"ID:%@ Name:%@",[self.tracker get:kGAITrackingId],[self.tracker get:kGAIScreenName]);
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

-(void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
