//
//  ViewController.m
//  ModernButton
//
//  Created by Gerald Hewes on 8/6/14.
//  Copyright (c) 2014 Gerald Hewes. All rights reserved.
//

#import "ViewController.h"
#import "ButtonNativeAchievement.h"

@interface ViewController ()

@end

#define YOUR_APP_ID @"401c5af1432b5c9a04f99d82a9821541ef88aa86"
#define YOUR_TEST_EVENT @"shoot_bunny"

@implementation ViewController

@synthesize bigRedButton;
@synthesize bigGreenButton;
@synthesize bigBlueButton;
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Set the delegate so we get notified from the SDK
    [[SessionM sharedInstance] setDelegate:self];
    // Init the SDK
    SMStart(YOUR_APP_ID);
    
    SMPortalButton *portalButton=[SMPortalButton buttonWithType:UIButtonTypeSystem];
    [portalButton.button setTitle:@"Portal Button" forState:UIControlStateNormal];
    portalButton.frame = CGRectMake(40, 40, 100, 30);
    [self.view addSubview:portalButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)redButtonAction:(id)sender{
     SMAction(YOUR_TEST_EVENT);
}

- (IBAction)greenButtonAction:(id)sender{
    [[SessionM sharedInstance] presentActivity:SMActivityTypePortal];
}

- (IBAction)blueButtonAction:(id)sender{
    
    SMAchievementData *achievementData =
    [SessionM sharedInstance].unclaimedAchievement;
    
    if (achievementData) {
        ButtonNativeAchievement *activity = [[ButtonNativeAchievement alloc] initWithAchievmentData:achievementData];
        [activity present];
    }


return;
}

@end
