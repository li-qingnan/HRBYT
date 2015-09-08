//
//  YTFCLiftViewController.h
//  HRBYiTengFC
//
//  Created by Yinan on 15/8/20.
//  Copyright (c) 2015年 Yinan. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum {
    TabMV,
    TAbYTHKS,
    Tab14Game,
    Tab15Game,
    Tab14Pic,
    Tab15Pic,
    TabNone
} TabType;

@protocol YTFCLiftViewControllerDelegate <NSObject>

- (void)backMiddleWithTabType:(TabType)tabtype;

@end

@interface YTFCLiftViewController : UIViewController

@property (nonatomic,assign) id<YTFCLiftViewControllerDelegate>delegate;

@end
