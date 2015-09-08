//
//  YTFCTitleTableViewCell.h
//  HRBYiTengFC
//
//  Created by Yinan on 15/8/20.
//  Copyright (c) 2015年 Yinan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YTFCVideoObj.h"

@protocol YTFCTitleTableViewCellDelegate <NSObject>

- (void)selectOneCellWithVideoUrl:(NSString *)url bgImgStr:(NSString *)imgStr;

@end

@interface YTFCTitleTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIButton *playBtn;
@property (nonatomic, strong) YTFCVideoObj *obj;
@property (nonatomic, assign) id<YTFCTitleTableViewCellDelegate>delegate;

@end
