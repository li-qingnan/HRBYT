//
//  YTFCLiftViewController.m
//  HRBYiTengFC
//
//  Created by Yinan on 15/8/20.
//  Copyright (c) 2015年 Yinan. All rights reserved.
//

#import "YTFCLiftViewController.h"
#import "YTFCChannelTableViewCell.h"
#import "ParallaxHeaderView.h"

@interface YTFCLiftViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topConstraint;

@end

@implementation YTFCLiftViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self initialTableView];
}

- (void)initialTableView
{
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerNib:[UINib nibWithNibName:@"YTFCChannelTableViewCell" bundle:nil] forCellReuseIdentifier:@"YTFCChannelTableViewCell"];
    if ([UIScreen mainScreen].bounds.size.height <= 568) {
        self.topConstraint.constant = 30;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if ([self.delegate respondsToSelector:@selector(backMiddleWithTabType:)]) {
        [self.delegate backMiddleWithTabType:TabNone];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - tableViewDelegate Datasource
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    // Return the number of rows in the section.

    return 6;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if([UIScreen mainScreen].bounds.size.height <= 568){
        return 40;
    }
    return 50;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 250, 250)];
    UIImageView *logoImg = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    logoImg.image = [UIImage imageNamed:@"BgImage"];
    [headerView addSubview:logoImg];
    return headerView;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if ([UIScreen mainScreen].bounds.size.height <= 568) {
        return 220;
    }
    return 250;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    YTFCChannelTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"YTFCChannelTableViewCell" forIndexPath:indexPath];
    
    if(indexPath.row == 0){    cell.titleLabel.text = @"歌曲MV";}
    if(indexPath.row == 1){    cell.titleLabel.text = @"毅腾会客室";}
    if(indexPath.row == 2){    cell.titleLabel.text = @"15赛季比赛集锦";}
    if(indexPath.row == 3){    cell.titleLabel.text = @"15赛季海报欣赏";}
    if(indexPath.row == 4){    cell.titleLabel.text = @"14赛季比赛集锦";}
    if(indexPath.row == 5){    cell.titleLabel.text = @"14赛季海报欣赏";}
    
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        if ([self.delegate respondsToSelector:@selector(backMiddleWithTabType:  )]) {
            [self.delegate backMiddleWithTabType:TabMV];
        }
    }
    
    if (indexPath.row == 1) {
        if ([self.delegate respondsToSelector:@selector(backMiddleWithTabType:  )]) {
            [self.delegate backMiddleWithTabType:TAbYTHKS];
        }
    }
    
    if (indexPath.row == 2) {
        if ([self.delegate respondsToSelector:@selector(backMiddleWithTabType:  )]) {
            [self.delegate backMiddleWithTabType:Tab15Game];
        }
    }
    if (indexPath.row == 3) {
        if ([self.delegate respondsToSelector:@selector(backMiddleWithTabType:  )]) {
            [self.delegate backMiddleWithTabType:Tab15Pic];
        }
    }
    if (indexPath.row == 4) {
        if ([self.delegate respondsToSelector:@selector(backMiddleWithTabType:  )]) {
            [self.delegate backMiddleWithTabType:Tab14Game];
        }
    }
    if (indexPath.row == 5) {
        if ([self.delegate respondsToSelector:@selector(backMiddleWithTabType:  )]) {
            [self.delegate backMiddleWithTabType:Tab14Pic];
        }
    }
}

@end
