//
//  PopMenuView.h
//  
//
//  Created by Bingjie on 14/12/15.
//  Copyright (c) 2015年 Bingjie. All rights reserved.
//

#import "PopMenuItem.h"
//#import <ShareSDK/ShareSDK.h>

typedef void (^PopMenuViewSelectBlock)(NSInteger index);

@protocol PopMenuViewSelectDelegate <NSObject>
- (void)popMenuViewDisappear;
- (void)popMenuViewSelectIndex:(NSInteger)index;
//- (void)shareWithType:(ShareType)type withSender:(UIControl *)sender;
@end

@interface PopMenuView : UIView

//为了效果好看，菜单数仅支持 12以内，2或者3倍数
@property (nonatomic, copy) NSArray *menuItems;

@property (nonatomic, copy) PopMenuViewSelectBlock selectBlock;
@property (nonatomic, assign) id<PopMenuViewSelectDelegate> delegate;

+ (instancetype)menuView;
+ (instancetype)menuViewWithItems:(NSArray*)items;
- (void)show;

@end

@interface UIView (Additions)
- (CABasicAnimation *)fadeIn;
- (CABasicAnimation *)fadeOut;

@end
