//
//  YTFCContainerViewController.m
//  HRBYiTengFC
//
//  Created by Yinan on 15/8/20.
//  Copyright (c) 2015年 Yinan. All rights reserved.
//

#import "YTFCContainerViewController.h"
#import "YTFCLiftViewController.h"
#import "YTFCVideoViewController.h"

@interface YTFCContainerViewController ()<YTFCLiftViewControllerDelegate,YTFCVideoViewControllerDelegate>

@property (nonatomic,retain) YTFCLiftViewController *leftVC;
@property (nonatomic,retain) YTFCVideoViewController *middleVC;

@property (nonatomic,assign) TabType tabTap;
@property (nonatomic,retain) UIView *aView;

@end

@implementation YTFCContainerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.navigationController setNavigationBarHidden:YES animated:NO];
    
    //设置页面
    [self setMainView];
    
    self.tabTap = TabMV;
}

//设置页面
- (void)setMainView
{
    //将左中右三个controller添加到容器ContainerViewController中
    
    self.leftVC = [[YTFCLiftViewController alloc] init];
    self.leftVC.delegate = self;
    
    [self addChildViewController:self.leftVC];
    [self.view addSubview:self.leftVC.view];
    
    self.middleVC = [[YTFCVideoViewController alloc] init];
    self.middleVC.delegate = self;
    [self addChildViewController:self.middleVC];
    [self.view addSubview:self.middleVC.view];
    
    //假象View
    _aView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 25, 568)];
    [self.view addSubview:_aView];
    
    //添加按钮和手势
    [self addGesture];

}

- (void)backMiddleWithTabType:(TabType)tabtype
{
    if(tabtype == TabNone){
    }
    
    if(tabtype == TabMV){
        [self.middleVC refershDataWithType:TabMV];
    }
    
    if(tabtype == TAbYTHKS){
        [self.middleVC refershDataWithType:TAbYTHKS];
    }
    
    if(tabtype == Tab15Game){
        [self.middleVC refershDataWithType:Tab15Game];
    }
    
    if(tabtype == Tab14Game){
        [self.middleVC refershDataWithType:Tab14Game];
    }
    
    if(tabtype == Tab14Pic){
        [self.middleVC refershDataWithType:Tab14Pic];
    }
    
    if(tabtype == Tab15Pic){
        [self.middleVC refershDataWithType:Tab15Pic];
    }
    
    [self tapGesture];
}

- (void)addGesture
{
    //右滑手势
    UISwipeGestureRecognizer *rightGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(rightSwipeGesture)];
    rightGesture.direction = UISwipeGestureRecognizerDirectionRight;
    [_aView addGestureRecognizer:rightGesture];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGesture)];
    [self.middleVC.view addGestureRecognizer:tapGesture];
}

- (void)backLeft
{
    [self rightSwipeGesture];
}

//右滑手势响应方法
- (void)rightSwipeGesture
{
    self.middleVC.backBtn.hidden = YES;
    if (_middleVC.view.frame.origin.x == 0) {
        [UIView animateWithDuration:0.7 animations:^{
            [self.middleVC.view bringSubviewToFront:self.middleVC.blurView];
            self.middleVC.blurView.hidden = NO;
            self.middleVC.blurView.alpha = 0.7;
            _leftVC.view.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
            
            self.middleVC.view.frame = CGRectMake(250, 60, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-60*2);
            
        } completion:^(BOOL finished) {}];
    }else if (_middleVC.view.frame.origin.x<0){
        [UIView animateWithDuration:0.7 animations:^{
            _middleVC.view.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
            _leftVC.view.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
        } completion:^(BOOL finished) {}];
        
    }
    
}

//tap手势响应方法
- (void)tapGesture
{
    
    if (_middleVC.view.frame.origin.x != 0) {
        
        [UIView animateWithDuration:0.7 animations:^{
            
            _middleVC.view.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
            _leftVC.view.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
            self.middleVC.blurView.alpha = 0;
            
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.7 animations:^{

                self.middleVC.blurView.hidden = YES;
                self.middleVC.backBtn.hidden = NO;
                
            }];
        }];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
