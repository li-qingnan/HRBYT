//
//  YTFCInterface.h
//  HRBYiTengFC
//
//  Created by Yinan on 15/8/27.
//  Copyright (c) 2015年 Yinan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YTFCInterface : NSObject

+ (instancetype)sharedYTFCInterface;

#pragma make -- 获取数据
- (NSMutableArray *)getMusicMVData;
- (NSMutableArray *)get14GameData;
- (NSMutableArray *)get15GameData;

- (NSMutableArray *)get14PicData;
- (NSMutableArray *)get15PicData;

- (NSMutableArray *)getYTHKSData;

@end
