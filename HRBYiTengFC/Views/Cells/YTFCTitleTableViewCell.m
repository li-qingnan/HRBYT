//
//  YTFCTitleTableViewCell.m
//  HRBYiTengFC
//
//  Created by Yinan on 15/8/20.
//  Copyright (c) 2015年 Yinan. All rights reserved.
//

#import "YTFCTitleTableViewCell.h"

@interface YTFCTitleTableViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *bgImageView;

@end

@implementation YTFCTitleTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setObj:(YTFCVideoObj *)obj
{
    if (_obj != obj) {
        
        _obj = obj;
    }
    
    self.titleLabel.text = obj.title;
//    self.bgImageView.image = [UIImage imageNamed:obj.imageName];
}

- (IBAction)playBtnAction:(id)sender {
    if ([self.delegate respondsToSelector:@selector(selectOneCellWithVideoUrl:bgImgStr:)]) {
        [self.delegate selectOneCellWithVideoUrl:self.obj.vidoeUrl bgImgStr:self.obj.imageName];
    }
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
