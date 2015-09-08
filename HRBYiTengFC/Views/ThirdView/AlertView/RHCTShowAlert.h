//
//  RHCTShowAlert.h
//  rhct_ios
//
//  Created by zhangliang on 15/2/9.
//  Copyright (c) 2015年 rhct. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ShowAlertDelegate <NSObject>

@optional
- (void)didSelectButtonWithName:(NSString *)btnName;

@end

@interface RHCTShowAlert : NSObject

+ (void)copyStrToPasteboard:(NSString *)str;

+ (instancetype)sharedAlert;

/**
 @author 张良, 15-02-09 15:50:01
 
 只显示消息，自动消失  在下面方法上得封装
 
 @param msg     消息内容
 @param seconds 延迟时间
 */
- (void)showAutoDisappearAlertWithMessage:(NSString *)msg Delay:(NSInteger)seconds;

/**
 @author 张良, 15-02-09 15:09:16
 
 在屏幕中间显示消息
 
 @param title    消息抬头，可以为空
 @param msg      消息体，此处不可为空
 @param delegate 代理，可以为空，若为空，则没有callback
 @param array    什么确定啊，取消啊，这种的
 @param seconds  延迟多少秒消失，这个array为空时必须设置，否则用户没操作就没法继续操作， 若array为空则seconds秒之后消失，否则，seconds无意义
 */
- (void)showAlertWithTitle:(NSString *)title andMessage:(NSString *)msg andDelegate:(id<ShowAlertDelegate>)delegate andButtonNames:(NSArray *)array TimeDelayDisappear:(NSInteger)seconds;

@end
