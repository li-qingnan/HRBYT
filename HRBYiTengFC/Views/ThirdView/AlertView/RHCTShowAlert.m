//
//  RHCTShowAlert.m
//  rhct_ios
//
//  Created by zhangliang on 15/2/9.
//  Copyright (c) 2015年 rhct. All rights reserved.
//

#import "RHCTShowAlert.h"

#import <UIKit/UIKit.h>

@interface RHCTShowAlert ()<UIAlertViewDelegate>
@property (nonatomic, assign) id<ShowAlertDelegate> showAlertdelegate;
@property (nonatomic, strong) UIAlertView * malertView;
@property (nonatomic, strong) NSArray * alertButtonArr;
@end

@implementation RHCTShowAlert

+ (void)copyStrToPasteboard:(NSString *)str
{
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    pasteboard.string = str;
}

+ (instancetype)sharedAlert
{
    static RHCTShowAlert *alert;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        alert = [[RHCTShowAlert alloc]init];
    });
    return alert;
}

- (void)showAutoDisappearAlertWithMessage:(NSString *)msg Delay:(NSInteger)seconds
{
    NSAssert(1 == 0, @"请使用 GAGRemindView 代替此方法");
    [self showAlertWithTitle:@"" andMessage:msg andDelegate:nil andButtonNames:nil TimeDelayDisappear:seconds];
}

- (void)showAlertWithTitle:(NSString *)title andMessage:(NSString *)msg andDelegate:(id<ShowAlertDelegate>)delegate andButtonNames:(NSArray *)array TimeDelayDisappear:(NSInteger)seconds
{
    if (msg == nil || msg.length == 0) {
        return;
    }
    if (_malertView) {
        [self disappearAlert];
    }
    
    NSString * msgTitle = [NSString stringWithString:title];
    if (!msgTitle || msgTitle.length == 0) {
        msgTitle = @"";
    }
    
    NSString * msgStr = [NSString stringWithString:msg];
    if (!msgStr || msgStr.length == 0) {
        msgStr = @"";
    }
    
    _malertView = [[UIAlertView alloc] initWithTitle:msgTitle message:msgStr delegate:self cancelButtonTitle:nil otherButtonTitles:nil];
    self.showAlertdelegate = delegate;
    
    if (array && array.count != 0) {
        for (NSString * str in array) {
            [_malertView addButtonWithTitle:str];
        }
        self.alertButtonArr = [NSArray arrayWithArray:array];
        
    }else{
        [self performSelector:@selector(disappearAlert) withObject:nil afterDelay:seconds];
    }
    [_malertView show];
}

- (void)alertConfig
{
    _malertView = nil;
    self.showAlertdelegate = nil;
    self.alertButtonArr = nil;
}

- (void)disappearAlert
{
    [_malertView dismissWithClickedButtonIndex:0 animated:YES];
    [self alertConfig];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (self.showAlertdelegate && [self.showAlertdelegate respondsToSelector:@selector(didSelectButtonWithName:)]) {
        [self.showAlertdelegate didSelectButtonWithName:[self.alertButtonArr objectAtIndex:buttonIndex]];
        [self disappearAlert];
    }
    [self alertConfig];
}


@end
