//
//  YTFCVideoViewController.m
//  HRBYiTengFC
//
//  Created by Yinan on 15/8/20.
//  Copyright (c) 2015年 Yinan. All rights reserved.
//

#import "YTFCVideoViewController.h"
#import "YTFCTitleTableViewCell.h"
#import "ParallaxHeaderView.h"
#import "YTFCVideoObj.h"
#import "YTFCInterface.h"
#import "CZW_PriceStandardBackView.h"
#import "RHCTShowAlert.h"
#import "CUSFlashLabel.h"
#import "UIColor+HexColor.h"
#import "PopMenuView.h"

CGFloat VideoGepToSuper = 20;
#define K_SaveImageError @"保存图片请到iPhone的 设置-隐私-照片 功能中找到 哈尔滨毅腾 开启"

#define iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)

@interface YTFCVideoViewController ()<UITableViewDataSource,UITableViewDelegate,YTFCTitleTableViewCellDelegate,UIActionSheetDelegate,PopMenuViewSelectDelegate>
@property (nonatomic, strong) UITableView *ytfcTableView;

@property (nonatomic,strong) UIView *maskView;
@property (nonatomic, strong) UIWebView * videoWebview;
@property (nonatomic,strong) UIImageView *bgImageView;
@property (nonatomic,strong) NSMutableArray *mvArray;
@property (nonatomic,strong) NSMutableArray *ytHKSArray;
@property (nonatomic,strong) UIButton *shareBtn;

@property (nonatomic,strong) NSMutableArray *gameArray15;
@property (nonatomic,strong) NSMutableArray *gameArray14;

@property (nonatomic,strong) NSMutableArray *picArray15;
@property (nonatomic,strong) NSMutableArray *picArray14;

@property (nonatomic, assign) TabType tabType;

// scr
@property (strong,nonatomic) UIScrollView *largeScrollView;
@property (strong,nonatomic) UIScrollView *smallScrollView;

@property (assign,nonatomic) BOOL largeFlag;
@property (assign,nonatomic) BOOL smallFlag;
@property (assign,nonatomic) BOOL Flag;
@property (nonatomic, assign) NSInteger pageNumber;

@end

@implementation YTFCVideoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.tabType = TabMV;
    [self initialTableView];
    [self initialMusicData];
}

- (void)initialTableView
{
    if(self.ytfcTableView){
        [self.ytfcTableView removeFromSuperview];
    }
    self.ytfcTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    self.ytfcTableView.delegate = self;
    self.ytfcTableView.dataSource = self;
    [self.view addSubview:self.ytfcTableView];
    
    [self.ytfcTableView registerNib:[UINib nibWithNibName:@"YTFCTitleTableViewCell" bundle:nil] forCellReuseIdentifier:@"YTFCTitleTableViewCell"];
    
    ParallaxHeaderView *headerView = [ParallaxHeaderView parallaxHeaderViewWithCGSize:CGSizeMake(self.ytfcTableView.frame.size.width, 200)];
    headerView.headerImage = [UIImage imageNamed:@"HeaderImage"];
    
    [self.ytfcTableView setTableHeaderView:headerView];
}

- (void)initialMusicData
{
    self.mvArray = [[NSMutableArray alloc] init];
    [self.mvArray addObjectsFromArray:[[YTFCInterface sharedYTFCInterface] getMusicMVData]];
    
    self.ytHKSArray = [[NSMutableArray alloc] init];
    [self.ytHKSArray addObjectsFromArray:[[YTFCInterface sharedYTFCInterface] getYTHKSData]];
    
    self.gameArray14 = [[NSMutableArray alloc] init];
    [self.gameArray14 addObjectsFromArray:[[YTFCInterface sharedYTFCInterface] get14GameData]];
    
    self.gameArray15 = [[NSMutableArray alloc] init];
    [self.gameArray15 addObjectsFromArray:[[YTFCInterface sharedYTFCInterface] get15GameData]];
    
    self.picArray14 = [[NSMutableArray alloc] init];
    [self.picArray14 addObjectsFromArray:[[YTFCInterface sharedYTFCInterface] get14PicData]];
    
    self.picArray15 = [[NSMutableArray alloc] init];
    [self.picArray15 addObjectsFromArray:[[YTFCInterface sharedYTFCInterface] get15PicData]];
}

- (void)refershDataWithType:(TabType)type
{
    if (type == TabMV) {
        self.tabType = TabMV;
        self.ytfcTableView.hidden = NO;
        [self removeScrView];
        [self scrollToTop];
        [self.ytfcTableView reloadData];
    }
    
    if (type == TAbYTHKS) {
        self.tabType = TAbYTHKS;
        self.ytfcTableView.hidden = NO;
        [self removeScrView];
        [self scrollToTop];
        [self.ytfcTableView reloadData];
    }
    
    if (type == Tab15Game) {
        self.tabType = Tab15Game;
        self.ytfcTableView.hidden = NO;
        [self removeScrView];
        [self scrollToTop];
        [self.ytfcTableView reloadData];
    }
    
    if (type == Tab14Game) {
        self.tabType = Tab14Game;
        self.ytfcTableView.hidden = NO;
        [self removeScrView];
        [self scrollToTop];
        [self.ytfcTableView reloadData];
    }
    
    if (type == Tab14Pic) {
        self.tabType = Tab14Pic;
        self.ytfcTableView.hidden = YES;
        [self removeScrView];
        [self createScrollView];
        [self.view bringSubviewToFront:self.backBtn];
    }
    
    if (type == Tab15Pic) {
        self.tabType = Tab15Pic;
        self.ytfcTableView.hidden = YES;
        [self removeScrView];
        [self createScrollView];
        [self.view bringSubviewToFront:self.backBtn];
    }
}

- (void)scrollToTop
{
    [self.ytfcTableView  setContentOffset:CGPointMake(0,0) animated:NO];
}

- (void)removeScrView
{
    for (UIView *view in self.view.subviews) {
        if (view.tag == 701) {
            [view removeFromSuperview];
        }
        if (view.tag == 702) {
            [view removeFromSuperview];
        }
        if (view.tag == 9001) {
            [view removeFromSuperview];
        }
        if (view.tag == 9002) {
            [view removeFromSuperview];
        }
        
        if (view.tag == 800) {
            [view removeFromSuperview];
        }
        if (view.tag == 801) {
            [view removeFromSuperview];
        }
        if (view.tag == 802) {
            [view removeFromSuperview];
        }
    }
}

- (IBAction)backLeft:(id)sender {
    if ([self.delegate respondsToSelector:@selector(backLeft)]) {
        [self.delegate backLeft];
        self.backBtn.hidden = YES;
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    // Return the number of rows in the section.
    if(self.tabType == TabMV){
        return self.mvArray.count;
    }
    if(self.tabType == TAbYTHKS){
        return self.ytHKSArray.count;
    }
    if(self.tabType == Tab15Game){
        return self.gameArray15.count;
    }
    if(self.tabType == Tab14Game){
        return self.gameArray14.count;
    }
    return 0;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    YTFCTitleTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"YTFCTitleTableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    YTFCVideoObj *obj;
    if (self.tabType == TabMV) {
        obj = [self.mvArray objectAtIndex:indexPath.row];

        cell.titleLabel.font = [UIFont systemFontOfSize:15];

    }
    
    if (self.tabType == TAbYTHKS) {
        obj = [self.ytHKSArray objectAtIndex:indexPath.row];
        
        cell.titleLabel.font = [UIFont systemFontOfSize:15];
        
    }
    
    if (self.tabType == Tab15Game) {
        obj = [self.gameArray15 objectAtIndex:indexPath.row];

        if([UIScreen mainScreen].bounds.size.height <= 568){
            cell.titleLabel.font = [UIFont systemFontOfSize:13];
        }

    }
    
    if (self.tabType == Tab14Game) {
        obj = [self.gameArray14 objectAtIndex:indexPath.row];
        
        if([UIScreen mainScreen].bounds.size.height <= 568){
            cell.titleLabel.font = [UIFont systemFontOfSize:13];
        }
        
    }
    
    cell.delegate = self;
    cell.obj = obj;
    
    return cell;
}

// 选中某一cell
- (void)selectOneCellWithVideoUrl:(NSString *)url bgImgStr:(NSString *)imgStr
{
    [self createMaskViewWithUrl:url bgImgStr:imgStr];
    self.backBtn.hidden = YES;
}

// 创建遮罩View
- (void)createMaskViewWithUrl:(NSString *)url bgImgStr:(NSString *)imgStr
{
    if(self.maskView){
        [self.maskView removeFromSuperview];
    }
    self.maskView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    self.maskView.tag = 801;
    [self.view addSubview:self.maskView];
    [self.view bringSubviewToFront:self.maskView];
    
    if(self.bgImageView){
        [self.bgImageView removeFromSuperview];
    }
    self.bgImageView = [[UIImageView alloc] initWithFrame:self.maskView.bounds];
    self.bgImageView.alpha = 0.7;
    [self.maskView addSubview:self.bgImageView];

    self.maskView.hidden = NO;
    self.maskView.backgroundColor = [UIColor blackColor];
    self.bgImageView.image = [UIImage imageNamed:imgStr];
    
    self.shareBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    self.shareBtn.frame = CGRectMake([UIScreen mainScreen].bounds.size.width- 65, [UIScreen mainScreen].bounds.size.height- 130, 50, 130);
    [self.shareBtn setImage:[UIImage imageNamed:@"Share"] forState:UIControlStateNormal];
    [self.shareBtn setTitle:@"分享" forState:UIControlStateNormal];
    self.shareBtn.titleLabel.font = [UIFont systemFontOfSize:20];
    self.shareBtn.titleEdgeInsets = UIEdgeInsetsMake(100, -50, 0, 0);
    [self.shareBtn addTarget:self action:@selector(showShareView) forControlEvents:UIControlEventTouchUpInside];
    [self.maskView addSubview:self.shareBtn];
    
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapgestureAction)];
    [self.maskView addGestureRecognizer:tapGesture];
    
    [self createVideoWebViewWithUrl:url];
}

#pragma mark -- 分享
- (void)showShareView
{
    NSLog(@"分享");
    
    NSMutableArray *array = [[NSMutableArray alloc]init];
    NSMutableArray *nameStrArr = [[NSMutableArray alloc] initWithObjects:@"朋友圈",@"微信好友",@"新浪微博",@"QQ空间",@"QQ好友",@"", nil];
    
    for (NSInteger i = 0; i < 6; i++) {
        NSString *string = [NSString stringWithFormat:@"Share_%ld",(long)i];
        PopMenuItem *item = [PopMenuItem itemWithTitle:[nameStrArr objectAtIndex:i] image:[UIImage imageNamed:string]];
        [array addObject:item];
    }
    
    PopMenuView *sharePopView = [PopMenuView menuViewWithItems:array];
    sharePopView.delegate = self;
    [sharePopView show];
}

- (void)tapgestureAction
{
    self.maskView.hidden = YES;
    self.backBtn.hidden = NO;
}

// 创建WebView
- (void)createVideoWebViewWithUrl:(NSString *)url
{
    if(self.videoWebview){
        [self.videoWebview removeFromSuperview];
    }
    self.videoWebview = [[UIWebView alloc] init];
    self.videoWebview.tag = 802;
    self.videoWebview.scrollView.scrollEnabled = NO;
    [self.maskView addSubview:self.videoWebview];
    [self.maskView bringSubviewToFront:self.videoWebview];
    self.videoWebview.backgroundColor = [UIColor whiteColor];
    
    [self setupPlayContentWithVideoUrl:url];
}

// 设置播放内容
- (void)setupPlayContentWithVideoUrl:(NSString *)videoUrl
{
    CGFloat width = 640.0;
    CGFloat height = 360.0;
    
    CGFloat realWidth;
    if (width <  [UIScreen mainScreen].bounds.size.width - 2 * VideoGepToSuper) {
        realWidth = width;
    }else{
        realWidth = [UIScreen mainScreen].bounds.size.width - 2 * VideoGepToSuper;
    }
    CGFloat realHeight = (height * realWidth) / width;
    
#warning 选择网页分享中通用代码中scr部分的url
    
    NSString *videoContent = videoUrl;
    
    self.videoWebview.frame = CGRectMake(VideoGepToSuper, [UIScreen mainScreen].bounds.size.height/2 - realHeight/2, realWidth, realHeight);
    
    NSString * htmlStr = [NSString stringWithFormat:@"<iframe height=\"%f\" width=\"%f\" src=\"%@\" frameborder=1></iframe><style>*{margin:0;padding:0}</style>", realHeight-4, realWidth-4, videoContent];
    
    [self.videoWebview loadHTMLString:htmlStr baseURL:nil];
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

#pragma mark - 海报ScrollView

// 创建scr
- (void)createScrollView
{
    // 图片数据
    NSMutableArray *array = [[NSMutableArray alloc] init];
    if(self.tabType == Tab14Pic){
        [array addObjectsFromArray:self.picArray14];
    }
    
    if(self.tabType == Tab15Pic){
        [array addObjectsFromArray:self.picArray15];
    }
    
    // 创建Scr
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    self.largeScrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 60, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    
    CGFloat height = 0;
    if([UIScreen mainScreen].bounds.size.height < 667){
        height = 140;
    }else{
        height = 150;
    }
    self.smallScrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, [UIScreen mainScreen].bounds.size.height-height, [UIScreen mainScreen].bounds.size.width, 100)];
    
    self.largeScrollView.contentSize = CGSizeMake(self.largeScrollView.frame.size.width * array.count, self.largeScrollView.frame.size.height);
    self.smallScrollView.contentSize = CGSizeMake(100 * array.count, self.smallScrollView.frame.size.height);
    
    self.smallScrollView.delegate = self;
    self.largeScrollView.delegate = self;
    
    self.largeScrollView.tag = 9001;
    self.smallScrollView.tag = 9002;
    
    self.largeScrollView.pagingEnabled = YES;
    self.smallScrollView.pagingEnabled = YES;
    
    self.largeScrollView.showsVerticalScrollIndicator = NO;
    self.smallScrollView.showsVerticalScrollIndicator = NO;
    self.largeScrollView.showsHorizontalScrollIndicator = YES;
    self.smallScrollView.showsHorizontalScrollIndicator = YES;
    
    CZW_PriceStandardBackView *largeBackView = [[CZW_PriceStandardBackView alloc]initWithFrame:_largeScrollView.frame];
    largeBackView.tag = 701;
    [self.view addSubview:largeBackView];
    
    CZW_PriceStandardBackView *smallBackView = [[CZW_PriceStandardBackView alloc]initWithFrame:self.smallScrollView.frame];
    smallBackView.tag = 702;
    [self.view addSubview:smallBackView];
    
    [self.view addSubview:self.largeScrollView];
    [self.view addSubview:self.smallScrollView];
    
    if([UIScreen mainScreen].bounds.size.height > 480){ // 4s不创建
        [self createFlashLabelView];
    }
    
    for (int i = 0 ; i < array.count; i++) {
        
        UIImageView *large =[[UIImageView alloc]initWithFrame:CGRectMake(i*[UIScreen mainScreen].bounds.size.width, 0, [UIScreen mainScreen].bounds.size.width, [self imageViewHeightWithType:@"large"])];
        large.userInteractionEnabled = YES;
        UIImageView *small =[[UIImageView alloc]initWithFrame:CGRectMake(i*100, 0,90, [self imageViewHeightWithType:@"small"])];
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickTapGestureAction:)];
        [large addGestureRecognizer:tap];

        UIImage *largeImg = array[i];
        UIImage *smallImg = array[i];

        large.image = largeImg;
        small.image = smallImg;

        [self.largeScrollView addSubview:large];
        [self.smallScrollView addSubview:small];
    }
    
}

// 创建FlashLabel
- (void)createFlashLabelView
{
    CGFloat originHeight = 0;
    CGFloat sizeHeight = 0;
    

    if([UIScreen mainScreen].bounds.size.height == 568){
        originHeight = 310;
        sizeHeight = 110;
    }
    
    if([UIScreen mainScreen].bounds.size.height == 667){
        originHeight = 370;
        sizeHeight = 135;
    }

    if([UIScreen mainScreen].bounds.size.height == 736){
        originHeight = 370;
        sizeHeight = 205;
    }

    UIView *flashLabelView = [[UIView alloc] initWithFrame:CGRectMake(0, originHeight, [UIScreen mainScreen].bounds.size.width, sizeHeight)];
    flashLabelView.tag = 800;
//    flashLabelView.backgroundColor = [UIColor redColor];
    [self.view addSubview:flashLabelView];
    
    CGFloat originX = 0;
    CGFloat originy = 0;
    CGFloat originYy = 50;
    if([UIScreen mainScreen].bounds.size.height == 568){
        originX = 35;
        originy = 0;
        originYy = 40;
    }
    if([UIScreen mainScreen].bounds.size.height == 667){
        originX = 40;
        originy = 0;
    }
    if([UIScreen mainScreen].bounds.size.height == 736){
        originX = 60;
        originy = 35;
    }
    
    CGFloat textSize = 30;
    CGFloat textHeight = 50;
    if([UIScreen mainScreen].bounds.size.height == 568){
        textSize = 25;
        textHeight = 20;
    }
    
    CUSFlashLabel *hrbLabel = [[CUSFlashLabel alloc]initWithFrame:CGRectMake(originX, originy, 300, textHeight)];
    [hrbLabel setText:@"我们的城市是   哈尔滨"];
    hrbLabel.textColor = [UIColor colorWithHexString:@"#0997DE"];
    [hrbLabel setFont:[UIFont systemFontOfSize:textSize]];
    [hrbLabel setSpotlightColor:[UIColor colorWithHexString:@"#fff500"]];
    [hrbLabel setContentMode:UIViewContentModeTop];
    [hrbLabel startAnimating];
    [flashLabelView addSubview:hrbLabel];
    
    CUSFlashLabel *ytLabel = [[CUSFlashLabel alloc]initWithFrame:CGRectMake(originX, originy+originYy, 300, textHeight)];
    [ytLabel setText:@"我们的球队是   毅腾"];
    ytLabel.textColor = [UIColor colorWithHexString:@"#0997DE"];
    [ytLabel setFont:[UIFont systemFontOfSize:textSize]];
    [ytLabel setSpotlightColor:[UIColor colorWithHexString:@"#fff500"]];
    [ytLabel setContentMode:UIViewContentModeTop];
    [ytLabel startAnimating];
    [flashLabelView addSubview:ytLabel];
    
    CUSFlashLabel *zdLabel = [[CUSFlashLabel alloc]initWithFrame:CGRectMake(originX, originy+2*originYy, 300, textHeight)];
    [zdLabel setText:@"我们的口号是   战斗"];
    zdLabel.textColor = [UIColor colorWithHexString:@"#0997DE"];
    [zdLabel setFont:[UIFont systemFontOfSize:textSize]];
    [zdLabel setSpotlightColor:[UIColor colorWithHexString:@"#fff500"]];
    [zdLabel setContentMode:UIViewContentModeTop];
    [zdLabel startAnimating];
    [flashLabelView addSubview:zdLabel];
}

// imageView高度
- (CGFloat)imageViewHeightWithType:(NSString *)type
{
    if([type isEqualToString:@"large"]){
        if([UIScreen mainScreen].bounds.size.height == 480){
            return 200;
        }
        if([UIScreen mainScreen].bounds.size.height == 568){
            return 240;
        }
        
        if([UIScreen mainScreen].bounds.size.height == 667){
            return 300;
        }
        
        if([UIScreen mainScreen].bounds.size.height == 736){
            return 300;
        }
    }
    
    if([type isEqualToString:@"small"]){
        if([UIScreen mainScreen].bounds.size.height == 480){
            return 70;
        }
        if([UIScreen mainScreen].bounds.size.height == 568){
            return 70;
        }
        
        if([UIScreen mainScreen].bounds.size.height == 667){
            return 80;
        }
        
        if([UIScreen mainScreen].bounds.size.height == 736){
            return 80;
        }
    }

    return 0;
}

-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    if (scrollView.tag == 9001) {
        self.largeFlag = YES;
    }
    if (scrollView.tag == 9002) {
        self.smallFlag = YES;
    }
    
}
-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    
    if(scrollView == self.ytfcTableView){
        [(ParallaxHeaderView *)self.ytfcTableView.tableHeaderView layoutHeaderViewForScrollViewOffset:scrollView.contentOffset];
    }
    
    if (scrollView.contentOffset.x > 0) {
        if (scrollView.tag == 9001) {
            float x= round(scrollView.contentOffset.x/[UIScreen mainScreen].bounds.size.width);
            if (self.largeFlag == YES) {
                
                NSInteger arrayCount = 0;
                if(self.tabType == Tab14Pic){
                    arrayCount = self.picArray14.count;
                }
                if(self.tabType == Tab15Pic){
                    arrayCount = self.picArray15.count;
                }
    
                if (x < arrayCount-2) {
                    [self.smallScrollView setContentOffset:CGPointMake(x*100, 0) animated:YES];
                    
                }
            }
        }
        if (scrollView.tag == 9002) {
            float x= round(scrollView.contentOffset.x/100.0);
            if (self.smallFlag == YES) {
                [self.largeScrollView setContentOffset:CGPointMake(x*[UIScreen mainScreen].bounds.size.width, 0) animated:YES];
            }
        }
    }
    
    
    if (scrollView.contentOffset.x<-80 && _Flag == YES) {
        [self.navigationController popViewControllerAnimated:YES];
        _Flag = NO;
    }
}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    
    if (scrollView.tag == 9001) {
        self.largeFlag = NO;
        
        //计算 scrollView 停留在哪一页
        CGPoint offset = scrollView.contentOffset;//计算偏移量
        
        NSInteger pageNumber = offset.x / scrollView.frame.size.width;

        self.pageNumber = pageNumber;
    }
    
    if (scrollView.tag == 9002) {
        self.smallFlag = NO;
        
        //计算 scrollView 停留在哪一页
//        CGPoint offset = scrollView.contentOffset;//计算偏移量
//        
//        NSInteger pageNumber = offset.x / scrollView.frame.size.width;
    
    }
}


- (void)clickTapGestureAction:(UITapGestureRecognizer *)gesture
{
    UIActionSheet *actionSheet = [[UIActionSheet alloc]
                                  initWithTitle:nil
                                  delegate:self
                                  cancelButtonTitle:@"取消"
                                  destructiveButtonTitle:nil
                                  otherButtonTitles:@"保存图片",nil];
    actionSheet.actionSheetStyle = UIActionSheetStyleDefault;
    [actionSheet showInView:self.view];
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0) {
        NSLog(@"保存图片");
        
        NSMutableArray *array = [[NSMutableArray alloc] init];
        
        if(self.tabType == Tab14Pic){
            [array addObjectsFromArray:self.picArray14];
        }
        
        if(self.tabType == Tab15Pic){
            [array addObjectsFromArray:self.picArray15];
        }
        
        UIImage *image = [array objectAtIndex:self.pageNumber];
        UIImageWriteToSavedPhotosAlbum(image, self, @selector(image:didFinishSavingWithError:contextInfo:), nil);
    }else if (buttonIndex == 1) {
        NSLog(@"取消");
    }
    
}

#pragma mark -- 保存图片响应
- (void)image: (UIImage *) image didFinishSavingWithError: (NSError *) error contextInfo: (void *) contextInfo
{
    NSString *msg = nil ;
    if(error != NULL){
        [[RHCTShowAlert sharedAlert] showAlertWithTitle:@"提示" andMessage:K_SaveImageError andDelegate:nil andButtonNames:@[@"好"] TimeDelayDisappear:1];

    }else{
        msg = @"保存图片成功" ;
        [[RHCTShowAlert sharedAlert] showAutoDisappearAlertWithMessage:msg Delay:2];
    }
}


@end
