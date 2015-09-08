//
//  YTFCVideoObj.h
//  HRBYiTengFC
//
//  Created by Yinan on 15/8/20.
//  Copyright (c) 2015年 Yinan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YTFCVideoObj : NSObject

@property (nonatomic ,copy) NSString *title;
@property (nonatomic ,copy) NSString *vidoeUrl;
@property (nonatomic ,copy) NSString *imageName;

- (instancetype)initWithTitle:(NSString *)title videoUrl:(NSString *)videoUrl;
- (instancetype)initWithTitle:(NSString *)title videoUrl:(NSString *)videoUrl imageName:(NSString *)imageName;

@end
