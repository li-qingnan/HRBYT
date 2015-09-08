//
//  YTFCVideoViewController.h
//  HRBYiTengFC
//
//  Created by Yinan on 15/8/20.
//  Copyright (c) 2015年 Yinan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YTFCLiftViewController.h"

@protocol YTFCVideoViewControllerDelegate <NSObject>

- (void)backLeft;

@end

@interface YTFCVideoViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIVisualEffectView *blurView;
@property (weak, nonatomic) IBOutlet UIButton *backBtn;
@property (nonatomic, assign) id<YTFCVideoViewControllerDelegate>delegate;
- (void)refershDataWithType:(TabType)type;

@end
