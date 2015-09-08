//
//  YTFCVideoObj.m
//  HRBYiTengFC
//
//  Created by Yinan on 15/8/20.
//  Copyright (c) 2015年 Yinan. All rights reserved.
//

#import "YTFCVideoObj.h"

@implementation YTFCVideoObj
- (instancetype)initWithTitle:(NSString *)title videoUrl:(NSString *)videoUrl
{
    self = [super init];
    if(self){
        self.title = title;
        self.vidoeUrl = videoUrl;
    }
    return self;
}


- (instancetype)initWithTitle:(NSString *)title videoUrl:(NSString *)videoUrl imageName:(NSString *)imageName
{
    self = [super init];
    if(self){
        self.title = title;
        self.vidoeUrl = videoUrl;
        self.imageName = imageName;
    }
    return self;
}
@end
