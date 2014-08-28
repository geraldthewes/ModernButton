//
//  ViewController.h
//  ModernButton
//
//  Created by Gerald Hewes on 8/6/14.
//  Copyright (c) 2014 Gerald Hewes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SessionM.h"
#import "SMPortalButton.h"

@interface ViewController : UIViewController <SessionMDelegate> {
        IBOutlet UIButton * bigRedButton;
        IBOutlet UIButton * bigGreenButton;
        IBOutlet UIButton * bigBlueButton;
        IBOutlet UISwitch * memberSwitch;
}

@property (nonatomic, retain) UIButton * bigGreenButton;
@property (nonatomic, retain) UIButton * bigRedButton;
@property (nonatomic, retain) UIButton * bigBlueButton;
@property (nonatomic, retain) UISwitch * memberSwitch;

- (IBAction)redButtonAction:(id)sender;
- (IBAction)greenButtonAction:(id)sender;
- (IBAction)blueButtonAction:(id)sender;
- (IBAction)memberSwitchAction:(id)sender;

- (void)updateButton:  (SessionMState) state;

- (void)sessionM: (SessionM *)session didTransitionToState: (SessionMState) state;

@end

