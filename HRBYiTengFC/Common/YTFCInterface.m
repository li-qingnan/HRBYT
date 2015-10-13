//
//  YTFCInterface.m
//  HRBYiTengFC
//
//  Created by Yinan on 15/8/27.
//  Copyright (c) 2015年 Yinan. All rights reserved.
//

#import "YTFCInterface.h"
#import "YTFCVideoObj.h"

#import <UIKit/UIKit.h>

@interface YTFCInterface ()
@property (nonatomic,strong) NSMutableArray *mvArray;
@property (nonatomic,strong) NSMutableArray *gameArray15;
@property (nonatomic,strong) NSMutableArray *gameArray14;
@property (nonatomic,strong) NSMutableArray *picArray15;
@property (nonatomic,strong) NSMutableArray *picArray14;
@property (nonatomic,strong) NSMutableArray *ytHKSArray;
@end

@implementation YTFCInterface

+ (instancetype)sharedYTFCInterface
{
    static YTFCInterface *interface;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        interface = [[YTFCInterface alloc]init];
    });
    return interface;
}

- (NSMutableArray *)getMusicMVData{
    self.mvArray = [[NSMutableArray alloc] init];
    
    YTFCVideoObj *mvObj1 = [[YTFCVideoObj alloc] initWithTitle:@"北方以北" videoUrl:@"http://player.youku.com/embed/XMTI4MDkwOTgxNg=="];
    YTFCVideoObj *mvObj2 = [[YTFCVideoObj alloc] initWithTitle:@"胜利之光" videoUrl:@"http://v.qq.com/iframe/player.html?vid=a0152m4595b&tiny=0&auto=0"];
    YTFCVideoObj *mvObj3 = [[YTFCVideoObj alloc] initWithTitle:@"奔跑吧！毅腾！《I RUN FOR LIFE》" videoUrl:@"http://player.youku.com/embed/XMTMyNTMyMjE1Ng=="];
    YTFCVideoObj *mvObj4 = [[YTFCVideoObj alloc] initWithTitle:@"我的男友叫毅腾" videoUrl:@"http://player.youku.com/embed/XMTI3MjA5Mzc5Ng=="];
    YTFCVideoObj *mvObj5 = [[YTFCVideoObj alloc] initWithTitle:@"一个球迷的梦呓&Red Sky" videoUrl:@"http://player.youku.com/embed/XMTM1MzMwMDc4NA=="];
    YTFCVideoObj *mvObj6 = [[YTFCVideoObj alloc] initWithTitle:@"Brave Soul" videoUrl:@"http://player.youku.com/embed/XOTQ0OTM3NzMy"];
    YTFCVideoObj *mvObj7 = [[YTFCVideoObj alloc] initWithTitle:@"爱毅腾 再给点耐心《Patience》" videoUrl:@"http://player.youku.com/embed/XNzcwNDE1ODc2"];
    YTFCVideoObj *mvObj8 = [[YTFCVideoObj alloc] initWithTitle:@"致罗德瑞格“为爱而飞”" videoUrl:@"http://player.youku.com/embed/XMTI5MjEyMTQ0NA=="];
    YTFCVideoObj *mvObj9 = [[YTFCVideoObj alloc] initWithTitle:@"有毅腾的地方 宛若天堂”" videoUrl:@"http://www.56.com/iframe/MTI1ODgyODc4"];
    YTFCVideoObj *mvObj10 = [[YTFCVideoObj alloc] initWithTitle:@"哈尔滨毅腾 ForeverYoung”" videoUrl:@"http://www.56.com/iframe/MTI3MzQzNjc4"];
    YTFCVideoObj *mvObj11 = [[YTFCVideoObj alloc] initWithTitle:@"为梦想而战 给爱毅腾的人" videoUrl:@"http://player.youku.com/embed/XODA3NjUxNzA0"];
    YTFCVideoObj *mvObj12 = [[YTFCVideoObj alloc] initWithTitle:@"献给曾经为毅腾而战的他们" videoUrl:@"http://player.youku.com/embed/XMTI5NDE5MTI3Mg=="];
    YTFCVideoObj *mvObj13 = [[YTFCVideoObj alloc] initWithTitle:@"魔鬼主场 血性会展" videoUrl:@"http://player.youku.com/embed/XNzA1ODA3Nzc2"];
    YTFCVideoObj *mvObj14 = [[YTFCVideoObj alloc] initWithTitle:@"我的好兄弟" videoUrl:@"http://player.youku.com/embed/XMTI5MjA5MzQxMg=="];
    YTFCVideoObj *mvObj15 = [[YTFCVideoObj alloc] initWithTitle:@"其实都没有" videoUrl:@"http://v.qq.com/iframe/player.html?vid=h015570ogez&tiny=0&auto=0"];
    YTFCVideoObj *mvObj16 = [[YTFCVideoObj alloc] initWithTitle:@"倔强" videoUrl:@"http://player.youku.com/embed/XMTI5NzUxNTM4NA=="];
    YTFCVideoObj *mvObj17 = [[YTFCVideoObj alloc] initWithTitle:@"和毅腾一起像男人一样战斗" videoUrl:@"http://player.youku.com/embed/XMTI5NzM1NTg2MA=="];
    YTFCVideoObj *mvObj18 = [[YTFCVideoObj alloc] initWithTitle:@"哈广电 夜空中最亮的星" videoUrl:@"http://player.youku.com/embed/XMTMxNTYzMzc0MA=="];
    YTFCVideoObj *mvObj19 = [[YTFCVideoObj alloc] initWithTitle:@"【桃花制作】夜空中最亮的星" videoUrl:@"http://player.youku.com/embed/XMTMzMjU1MDgwMA=="];
    YTFCVideoObj *mvObj20 = [[YTFCVideoObj alloc] initWithTitle:@"好久不见" videoUrl:@"http://player.youku.com/embed/XMTI5MTY3NTQ4MA=="];
    YTFCVideoObj *mvObj21 = [[YTFCVideoObj alloc] initWithTitle:@"平凡之路" videoUrl:@"http://player.youku.com/embed/XMTI5MTY3NTQxMg=="];
    YTFCVideoObj *mvObj22 = [[YTFCVideoObj alloc] initWithTitle:@"【桃花制作】我的歌声里" videoUrl:@"http://player.youku.com/embed/XMTMzMjU2NjI0MA=="];
    YTFCVideoObj *mvObj23 = [[YTFCVideoObj alloc] initWithTitle:@"15年6月6号大连远征纪实" videoUrl:@"http://player.youku.com/embed/XMTI1ODg0MjgyNA=="];
    YTFCVideoObj *mvObj24 = [[YTFCVideoObj alloc] initWithTitle:@"2015启程毅腾 万岁荣光" videoUrl:@"http://www.56.com/iframe/MTM1ODA5NTMy"];
    YTFCVideoObj *mvObj25 = [[YTFCVideoObj alloc] initWithTitle:@"毅腾在 我期待" videoUrl:@"http://www.56.com/iframe/MTI4NjA4Mjc0"];
    YTFCVideoObj *mvObj26 = [[YTFCVideoObj alloc] initWithTitle:@"有一种力量叫南看台" videoUrl:@"http://player.youku.com/embed/XNzg2NjYyNDE2"];
    YTFCVideoObj *mvObj27 = [[YTFCVideoObj alloc] initWithTitle:@"中超不一样的匆匆—哈尔滨毅腾" videoUrl:@"http://player.youku.com/embed/XODI4ODIxMjMy"];
    YTFCVideoObj *mvObj28 = [[YTFCVideoObj alloc] initWithTitle:@"2014中超新军哈尔滨毅腾" videoUrl:@"http://player.youku.com/embed/XNjY4NzY0NTcy"];
    YTFCVideoObj *mvObj29 = [[YTFCVideoObj alloc] initWithTitle:@"2014最后的主场" videoUrl:@"http://player.youku.com/embed/XODA5MDQ1OTU2"];
    YTFCVideoObj *mvObj30 = [[YTFCVideoObj alloc] initWithTitle:@"哈尔滨毅腾涅磐之战" videoUrl:@"http://player.youku.com/embed/XODA4MjQ3NzYw"];
    YTFCVideoObj *mvObj31 = [[YTFCVideoObj alloc] initWithTitle:@"燃烧吧！毅腾！毅腾14中超进球全录" videoUrl:@"http://www.56.com/iframe/MTI5MjQ0ODEw"];
    YTFCVideoObj *mvObj32 = [[YTFCVideoObj alloc] initWithTitle:@"哈尔滨毅腾2分钟比赛延时摄影" videoUrl:@"http://player.youku.com/embed/XMTI4MzI2NjA5Ng=="];
    YTFCVideoObj *mvObj33 = [[YTFCVideoObj alloc] initWithTitle:@"13冲超之战" videoUrl:@"http://player.youku.com/embed/XNjI5NTY1OTUy"];
    
    [self.mvArray addObject:mvObj1];
    [self.mvArray addObject:mvObj2];
    [self.mvArray addObject:mvObj3];
    [self.mvArray addObject:mvObj4];
    [self.mvArray addObject:mvObj5];
    [self.mvArray addObject:mvObj6];
    [self.mvArray addObject:mvObj7];
    [self.mvArray addObject:mvObj8];
    [self.mvArray addObject:mvObj9];
    [self.mvArray addObject:mvObj10];
    [self.mvArray addObject:mvObj11];
    [self.mvArray addObject:mvObj12];
    [self.mvArray addObject:mvObj13];
    [self.mvArray addObject:mvObj14];
    [self.mvArray addObject:mvObj15];
    [self.mvArray addObject:mvObj16];
    [self.mvArray addObject:mvObj17];
    [self.mvArray addObject:mvObj18];
    [self.mvArray addObject:mvObj19];
    [self.mvArray addObject:mvObj20];
    [self.mvArray addObject:mvObj21];
    [self.mvArray addObject:mvObj22];
    [self.mvArray addObject:mvObj23];
    [self.mvArray addObject:mvObj24];
    [self.mvArray addObject:mvObj25];
    [self.mvArray addObject:mvObj26];
    [self.mvArray addObject:mvObj27];
    [self.mvArray addObject:mvObj28];
    [self.mvArray addObject:mvObj29];
    [self.mvArray addObject:mvObj30];
    [self.mvArray addObject:mvObj31];
    [self.mvArray addObject:mvObj32];
    [self.mvArray addObject:mvObj33];
    
    return self.mvArray;

}
- (NSMutableArray *)get14GameData{
    
    self.gameArray14 = [[NSMutableArray alloc] init];
    YTFCVideoObj *game14_Obj1 = [[YTFCVideoObj alloc] initWithTitle:@"第1轮 14年3月7日 客场0:1 山东鲁能" videoUrl:@"http://v.qq.com/iframe/player.html?vid=a00136o74il&tiny=0&auto=0" imageName:@"HaiBao14_1"];
    YTFCVideoObj *game14_Obj2 = [[YTFCVideoObj alloc] initWithTitle:@"第2轮 14年3月15日 客场1:4 广州恒大" videoUrl:@"http://v.qq.com/iframe/player.html?vid=s00149nggjg&tiny=0&auto=0" imageName:@"HaiBao14_2"];
    YTFCVideoObj *game14_Obj3 = [[YTFCVideoObj alloc] initWithTitle:@"第3轮 14年3月22日 客场1:2 江苏舜天" videoUrl:@"http://v.qq.com/iframe/player.html?vid=n00144akpix&tiny=0&auto=0" imageName:@"HaiBao14_3"];
    YTFCVideoObj *game14_Obj4 = [[YTFCVideoObj alloc] initWithTitle:@"第4轮 14年3月30日 客场0:3 天津泰达" videoUrl:@"http://v.qq.com/iframe/player.html?vid=m00148wyvhc&tiny=0&auto=0" imageName:@"HaiBao14_4"];
    YTFCVideoObj *game14_Obj5 = [[YTFCVideoObj alloc] initWithTitle:@"第5轮 14年4月5日 客场0:3 辽宁宏运" videoUrl:@"http://v.qq.com/iframe/player.html?vid=t0014sddmt2&tiny=0&auto=0" imageName:@"HaiBao14_5"];
    YTFCVideoObj *game14_Obj6 = [[YTFCVideoObj alloc] initWithTitle:@"第6轮 14年4月13日 客场0:1 上海申鑫" videoUrl:@"http://v.qq.com/iframe/player.html?vid=o0014l0tn3n&tiny=0&auto=0" imageName:@"HaiBao14_6"];
    YTFCVideoObj *game14_Obj7 = [[YTFCVideoObj alloc] initWithTitle:@"第7轮 14年4月20日 客场1:2 杭州绿城" videoUrl:@"http://v.qq.com/iframe/player.html?vid=b0014xo3h53&tiny=0&auto=0" imageName:@"HaiBao14_7"];
    YTFCVideoObj *game14_Obj8 = [[YTFCVideoObj alloc] initWithTitle:@"第8轮 14年4月27日 主场0:1 北京国安" videoUrl:@"http://v.qq.com/iframe/player.html?vid=i0014k7mo90&tiny=0&auto=0" imageName:@"HaiBao14_8"];
    YTFCVideoObj *game14_Obj9 = [[YTFCVideoObj alloc] initWithTitle:@"第9轮 14年4月30日 客场1:1 河南建业" videoUrl:@"http://v.qq.com/iframe/player.html?vid=c0014qlqsy7&tiny=0&auto=0" imageName:@"HaiBao14_9"];
    YTFCVideoObj *game14_Obj10 = [[YTFCVideoObj alloc] initWithTitle:@"第10轮 14年5月4日 主场3:1 长春亚泰" videoUrl:@"http://v.qq.com/iframe/player.html?vid=g001449arku&tiny=0&auto=0" imageName:@"HaiBao14_10"];
    YTFCVideoObj *game14_Obj11 = [[YTFCVideoObj alloc] initWithTitle:@"第11轮 14年5月11日 客场1:3 大连阿尔滨" videoUrl:@"http://v.qq.com/iframe/player.html?vid=f0014mggfgx&tiny=0&auto=0" imageName:@"HaiBao14_11"];
    YTFCVideoObj *game14_Obj12 = [[YTFCVideoObj alloc] initWithTitle:@"第12轮 14年5月17日 主场3:3 上海绿地申花" videoUrl:@"http://v.qq.com/iframe/player.html?vid=w0014w84hig&tiny=0&auto=0" imageName:@"HaiBao14_12"];
    YTFCVideoObj *game14_Obj13 = [[YTFCVideoObj alloc] initWithTitle:@"第13轮 14年5月28日 客场0:1 上海上港" videoUrl:@"http://v.qq.com/iframe/player.html?vid=g0014bjo7z9&tiny=0&auto=0" imageName:@"HaiBao14_13"];
    YTFCVideoObj *game14_Obj14 = [[YTFCVideoObj alloc] initWithTitle:@"第14轮 14年5月25日 主场0:2 广州富力" videoUrl:@"http://v.qq.com/iframe/player.html?vid=t0014jxp5up&tiny=0&auto=0" imageName:@"HaiBao14_14"];
    YTFCVideoObj *game14_Obj15 = [[YTFCVideoObj alloc] initWithTitle:@"第15轮 14年7月20日 主场4:0 贵州人和" videoUrl:@"http://v.qq.com/iframe/player.html?vid=m0014xi6z4l&tiny=0&auto=0" imageName:@"HaiBao14_15"];
    YTFCVideoObj *game14_Obj16 = [[YTFCVideoObj alloc] initWithTitle:@"第16轮 14年7月27日 主场2:0 山东鲁能" videoUrl:@"http://v.qq.com/iframe/player.html?vid=s0014ce8cev&tiny=0&auto=0" imageName:@"HaiBao14_16"];
    YTFCVideoObj *game14_Obj17 = [[YTFCVideoObj alloc] initWithTitle:@"第17轮 14年7月30日 主场3:6 广州恒大" videoUrl:@"http://v.qq.com/iframe/player.html?vid=p0014aums19&tiny=0&auto=0" imageName:@"HaiBao14_17"];
    YTFCVideoObj *game14_Obj18 = [[YTFCVideoObj alloc] initWithTitle:@"第18轮 14年9月17日 主场1:2 江苏舜天" videoUrl:@"http://v.qq.com/iframe/player.html?vid=v0015b5z16h&tiny=0&auto=0" imageName:@"HaiBao14_18"];
    YTFCVideoObj *game14_Obj19 = [[YTFCVideoObj alloc] initWithTitle:@"第19轮 14年8月10日 主场0:0 天津泰达" videoUrl:@"http://v.qq.com/iframe/player.html?vid=z0014ao607m&tiny=0&auto=0" imageName:@"HaiBao14_19"];
    YTFCVideoObj *game14_Obj20 = [[YTFCVideoObj alloc] initWithTitle:@"第20轮 14年8月13日 主场2:2 辽宁宏远" videoUrl:@"http://v.qq.com/iframe/player.html?vid=d0014bqhj36&tiny=0&auto=0" imageName:@"HaiBao14_20"];
    YTFCVideoObj *game14_Obj21 = [[YTFCVideoObj alloc] initWithTitle:@"第21轮 14年8月16日 主场0:1 上海申鑫" videoUrl:@"http://v.qq.com/iframe/player.html?vid=n0015pbtoid&tiny=0&auto=0" imageName:@"HaiBao14_21"];
    YTFCVideoObj *game14_Obj22 = [[YTFCVideoObj alloc] initWithTitle:@"第22轮 14年8月25日 主场3:1 杭州绿城" videoUrl:@"http://v.qq.com/iframe/player.html?vid=p0015vs0fet&tiny=0&auto=0" imageName:@"HaiBao14_22"];
    YTFCVideoObj *game14_Obj23 = [[YTFCVideoObj alloc] initWithTitle:@"第23轮 14年8月31日 客场0:2 北京国安" videoUrl:@"http://v.qq.com/iframe/player.html?vid=c0015dupbpf&tiny=0&auto=0" imageName:@"HaiBao14_23"];
    YTFCVideoObj *game14_Obj24 = [[YTFCVideoObj alloc] initWithTitle:@"第24轮 14年9月14日 主场2:2 河南建业" videoUrl:@"http://v.qq.com/iframe/player.html?vid=h0015bmny4w&tiny=0&auto=0" imageName:@"HaiBao14_24"];
    YTFCVideoObj *game14_Obj25 = [[YTFCVideoObj alloc] initWithTitle:@"第25轮 14年9月21日 客场0:2 长春亚泰" videoUrl:@"http://v.qq.com/iframe/player.html?vid=p0015jfsop5&tiny=0&auto=0" imageName:@"HaiBao14_25"];
    YTFCVideoObj *game14_Obj26 = [[YTFCVideoObj alloc] initWithTitle:@"第26轮 14年9月27日 主场0:1 大连阿尔滨" videoUrl:@"http://v.qq.com/iframe/player.html?vid=h0015brddhl&tiny=0&auto=0" imageName:@"HaiBao14_26"];
    YTFCVideoObj *game14_Obj27 = [[YTFCVideoObj alloc] initWithTitle:@"第27轮 14年10月4日 客场1:2 上海绿地申花" videoUrl:@"http://v.qq.com/iframe/player.html?vid=z0015g5njsf&tiny=0&auto=0" imageName:@"HaiBao14_27"];
    YTFCVideoObj *game14_Obj28 = [[YTFCVideoObj alloc] initWithTitle:@"第28轮 14年10月19日 主场1:1 上海上港" videoUrl:@"http://v.qq.com/iframe/player.html?vid=j00152zdke3&tiny=0&auto=0" imageName:@"HaiBao14_28"];
    YTFCVideoObj *game14_Obj29 = [[YTFCVideoObj alloc] initWithTitle:@"第29轮 14年10月26日 客场1:5 广州富力" videoUrl:@"http://v.qq.com/iframe/player.html?vid=s00156osxgl&tiny=0&auto=0" imageName:@"HaiBao14_29"];
    YTFCVideoObj *game14_Obj30 = [[YTFCVideoObj alloc] initWithTitle:@"第30轮 14年11月2日 客场2:3 贵州人和" videoUrl:@"http://v.qq.com/iframe/player.html?vid=o00155gyj1l&tiny=0&auto=0" imageName:@"HaiBao14_30"];
    
    
    [self.gameArray14 addObject:game14_Obj1];
    [self.gameArray14 addObject:game14_Obj2];
    [self.gameArray14 addObject:game14_Obj3];
    [self.gameArray14 addObject:game14_Obj4];
    [self.gameArray14 addObject:game14_Obj5];
    [self.gameArray14 addObject:game14_Obj6];
    [self.gameArray14 addObject:game14_Obj7];
    [self.gameArray14 addObject:game14_Obj8];
    [self.gameArray14 addObject:game14_Obj9];
    [self.gameArray14 addObject:game14_Obj10];
    [self.gameArray14 addObject:game14_Obj11];
    [self.gameArray14 addObject:game14_Obj12];
    [self.gameArray14 addObject:game14_Obj13];
    [self.gameArray14 addObject:game14_Obj14];
    [self.gameArray14 addObject:game14_Obj15];
    [self.gameArray14 addObject:game14_Obj16];
    [self.gameArray14 addObject:game14_Obj17];
    [self.gameArray14 addObject:game14_Obj18];
    [self.gameArray14 addObject:game14_Obj19];
    [self.gameArray14 addObject:game14_Obj20];
    [self.gameArray14 addObject:game14_Obj21];
    [self.gameArray14 addObject:game14_Obj22];
    [self.gameArray14 addObject:game14_Obj23];
    [self.gameArray14 addObject:game14_Obj24];
    [self.gameArray14 addObject:game14_Obj25];
    [self.gameArray14 addObject:game14_Obj26];
    [self.gameArray14 addObject:game14_Obj27];
    [self.gameArray14 addObject:game14_Obj28];
    [self.gameArray14 addObject:game14_Obj29];
    [self.gameArray14 addObject:game14_Obj30];
    
    return self.gameArray14;

}

- (NSMutableArray *)get15GameData{
    self.gameArray15 = [[NSMutableArray alloc] init];
    YTFCVideoObj *game15_Obj1 = [[YTFCVideoObj alloc] initWithTitle:@"第1轮 15年3月14日 客场4:1 青岛中能" videoUrl:@"http://player.youku.com/embed/XOTI0NTc0Nzg0" imageName:@"HaiBao15_1"];
    YTFCVideoObj *game15_Obj2 = [[YTFCVideoObj alloc] initWithTitle:@"第2轮 15年3月22日 客场2:1 江西联盛" videoUrl:@"http://v.qq.com/iframe/player.html?vid=k0150l1xgna&tiny=0&auto=0" imageName:@"HaiBao15_2"];
    YTFCVideoObj *game15_Obj3 = [[YTFCVideoObj alloc] initWithTitle:@"第3轮 15年4月4日 客场2:2 河北华夏幸福" videoUrl:@"http://player.youku.com/embed/XOTMxMTExMTYw" imageName:@"HaiBao15_3"];
    YTFCVideoObj *game15_Obj4 = [[YTFCVideoObj alloc] initWithTitle:@"第4轮 15年4月12日 客场1:1 贵州智诚" videoUrl:@"http://v.qq.com/iframe/player.html?vid=f0152gik8qy&tiny=0&auto=0" imageName:@"HaiBao15_4"];
    YTFCVideoObj *game15_Obj5 = [[YTFCVideoObj alloc] initWithTitle:@"足协杯 15年4月15日 客场0:1 安徽力天" videoUrl:@"http://v.qq.com/iframe/player.html?vid=d0152ckh34i&tiny=0&auto=0" imageName:@"HaiBao15_1"];
    YTFCVideoObj *game15_Obj6 = [[YTFCVideoObj alloc] initWithTitle:@"第5轮 15年4月18日 客场1:1 深圳宇恒" videoUrl:@"http://player.youku.com/embed/XOTM4MDgzNDI4" imageName:@"HaiBao15_5"];
    YTFCVideoObj *game15_Obj7 = [[YTFCVideoObj alloc] initWithTitle:@"第6轮 15年4月25日 主场2:1 北京理工" videoUrl:@"http://player.youku.com/embed/XOTQzMDYwMjM2" imageName:@"HaiBao15_6"];
    YTFCVideoObj *game15_Obj8 = [[YTFCVideoObj alloc] initWithTitle:@"第7轮 15年5月2日 客场1:1 延边长白山" videoUrl:@"http://player.youku.com/embed/XOTQ4MDYxMDY0" imageName:@"HaiBao15_7"];
    YTFCVideoObj *game15_Obj9 = [[YTFCVideoObj alloc] initWithTitle:@"第8轮 15年5月9日 客场1:1 新疆天山雪豹" videoUrl:@"http://player.youku.com/embed/XOTUzNDQyNTg4" imageName:@"HaiBao15_8"];
    YTFCVideoObj *game15_Obj10 = [[YTFCVideoObj alloc] initWithTitle:@"第9轮 15年5月17日 主场2:1 青岛黄海制药" videoUrl:@"http://player.youku.com/embed/XOTU4NjQyODA4" imageName:@"HaiBao15_9"];
    YTFCVideoObj *game15_Obj11 = [[YTFCVideoObj alloc] initWithTitle:@"第10轮 15年5月23日 客场0:0 呼和浩特中优" videoUrl:@"http://player.youku.com/embed/XOTYzOTY0Nzc2" imageName:@"HaiBao15_10"];
    YTFCVideoObj *game15_Obj12 = [[YTFCVideoObj alloc] initWithTitle:@"第11轮 15年5月30日 主场1:1 天津松江" videoUrl:@"http://player.youku.com/embed/XMTI1MDk0MDA1Mg==" imageName:@"HaiBao15_11"];
    YTFCVideoObj *game15_Obj13 = [[YTFCVideoObj alloc] initWithTitle:@"第12轮 15年6月6日 客场2:2 大连阿尔滨" videoUrl:@"http://player.youku.com/embed/XMTI2Mjg5MTkyNA==" imageName:@"HaiBao15_12"];
    YTFCVideoObj *game15_Obj14 = [[YTFCVideoObj alloc] initWithTitle:@"第13轮 15年6月13日 客场0:2 北京北控" videoUrl:@"http://player.youku.com/embed/XMTI2MzA2NzYwOA==" imageName:@"HaiBao15_13"];
    YTFCVideoObj *game15_Obj15 = [[YTFCVideoObj alloc] initWithTitle:@"第14轮 15年6月21日 客场2:2 武汉卓尔" videoUrl:@"http://player.youku.com/embed/XMTI2ODczMzg2OA==" imageName:@"HaiBao15_14"];
    YTFCVideoObj *game15_Obj16 = [[YTFCVideoObj alloc] initWithTitle:@"第15轮 15年6月27日 主场1:0 湖南湘涛" videoUrl:@"http://player.youku.com/embed/XMTI3MzE2NTE0OA==" imageName:@"HaiBao15_15"];
    YTFCVideoObj *game15_Obj17 = [[YTFCVideoObj alloc] initWithTitle:@"第16轮 15年7月4日 主场1:1 青岛中能" videoUrl:@"http://player.youku.com/embed/XMTI3ODcwNTgwOA==" imageName:@"HaiBao15_16"];
    YTFCVideoObj *game15_Obj18 = [[YTFCVideoObj alloc] initWithTitle:@"第17轮 15年7月11日 主场2:1 江西联盛" videoUrl:@"http://player.youku.com/embed/XMTI4MzE1MDE0MA==" imageName:@"HaiBao15_17"];
    YTFCVideoObj *game15_Obj19 = [[YTFCVideoObj alloc] initWithTitle:@"第18轮 15年7月21日 主场1:1 河北华夏幸福" videoUrl:@"http://player.youku.com/embed/XMTI5MDg4ODg2MA==" imageName:@"HaiBao15_18"];
    YTFCVideoObj *game15_Obj20 = [[YTFCVideoObj alloc] initWithTitle:@"第19轮 15年7月25日 主场0:0 贵州智诚" videoUrl:@"http://player.youku.com/embed/XMTI5NDAzMzM4OA==" imageName:@"HaiBao15_19"];
    YTFCVideoObj *game15_Obj21 = [[YTFCVideoObj alloc] initWithTitle:@"第20轮 15年8月1日 主场2:1 深圳宇恒" videoUrl:@"http://player.youku.com/embed/XMTMwMDQxOTc1Ng==" imageName:@"HaiBao15_20"];
    YTFCVideoObj *game15_Obj22 = [[YTFCVideoObj alloc] initWithTitle:@"第21轮 15年8月8日 客场3:1 北京理工" videoUrl:@"http://player.youku.com/embed/XMTMwNTM0MzA1Ng==" imageName:@"HaiBao15_21"];
    YTFCVideoObj *game15_Obj23 = [[YTFCVideoObj alloc] initWithTitle:@"第22轮 15年8月15日 主场3:0 延边长白山" videoUrl:@"http://player.youku.com/embed/XMTMxMTc2NTg0OA==" imageName:@"HaiBao15_22"];
    YTFCVideoObj *game15_Obj24 = [[YTFCVideoObj alloc] initWithTitle:@"第23轮 15年8月22日 主场3:0 新疆天山雪豹" videoUrl:@"http://player.youku.com/embed/XMTMxNzg2Mzg0MA==" imageName:@"HaiBao15_23"];
    YTFCVideoObj *game15_Obj25 = [[YTFCVideoObj alloc] initWithTitle:@"第24轮 15年8月29日 客场0:1 青岛黄海制药" videoUrl:@" http://player.youku.com/embed/XMTMyMzY5ODUxNg==" imageName:@"HaiBao15_24"];
    YTFCVideoObj *game15_Obj26 = [[YTFCVideoObj alloc] initWithTitle:@"友谊赛 15年9月5日 主场4:1 俄罗斯海参崴光能" videoUrl:@"http://player.youku.com/embed/XMTMyODk4ODM0OA==" imageName:@""];
    YTFCVideoObj *game15_Obj27 = [[YTFCVideoObj alloc] initWithTitle:@"第25轮 15年9月12日 主场2:2 呼和浩特中优" videoUrl:@"http://player.youku.com/embed/XMTMzNTE5NDk5Ng==" imageName:@"HaiBao15_25"];
    YTFCVideoObj *game15_Obj28 = [[YTFCVideoObj alloc] initWithTitle:@"第26轮 15年9月20日 客场0:1 天津松江" videoUrl:@"http://player.youku.com/embed/XMTM0Mzg2MTQ4MA==" imageName:@""];
    YTFCVideoObj *game15_Obj29 = [[YTFCVideoObj alloc] initWithTitle:@"第27轮 15年9月26日 主场2:2 大连一方" videoUrl:@"http://player.youku.com/embed/XMTM0NzEwNDc0OA==" imageName:@"HaiBao15_27"];
    
    [self.gameArray15 addObject:game15_Obj1];
    [self.gameArray15 addObject:game15_Obj2];
    [self.gameArray15 addObject:game15_Obj3];
    [self.gameArray15 addObject:game15_Obj4];
    [self.gameArray15 addObject:game15_Obj5];
    [self.gameArray15 addObject:game15_Obj6];
    [self.gameArray15 addObject:game15_Obj7];
    [self.gameArray15 addObject:game15_Obj8];
    [self.gameArray15 addObject:game15_Obj9];
    [self.gameArray15 addObject:game15_Obj10];
    [self.gameArray15 addObject:game15_Obj11];
    [self.gameArray15 addObject:game15_Obj12];
    [self.gameArray15 addObject:game15_Obj13];
    [self.gameArray15 addObject:game15_Obj14];
    [self.gameArray15 addObject:game15_Obj15];
    [self.gameArray15 addObject:game15_Obj16];
    [self.gameArray15 addObject:game15_Obj17];
    [self.gameArray15 addObject:game15_Obj18];
    [self.gameArray15 addObject:game15_Obj19];
    [self.gameArray15 addObject:game15_Obj20];
    [self.gameArray15 addObject:game15_Obj21];
    [self.gameArray15 addObject:game15_Obj22];
    [self.gameArray15 addObject:game15_Obj23];
    [self.gameArray15 addObject:game15_Obj24];
    [self.gameArray15 addObject:game15_Obj25];
    [self.gameArray15 addObject:game15_Obj26];
    [self.gameArray15 addObject:game15_Obj27];
    [self.gameArray15 addObject:game15_Obj28];
    [self.gameArray15 addObject:game15_Obj29];
    
    return self.gameArray15;
}

- (NSMutableArray *)get14PicData{
    self.picArray14 = [[NSMutableArray alloc] init];
    
    for (int i = 1; i <= 48; i++) {
        UIImage *img = [UIImage imageNamed:[NSString stringWithFormat:@"HaiBao14_%d",i]];
        [self.picArray14 addObject:img];
    }

    return self.picArray14;
}
- (NSMutableArray *)get15PicData{
    self.picArray15 = [[NSMutableArray alloc] init];
    
    for (int i = 1; i <= 24; i++) {
        UIImage *img = [UIImage imageNamed:[NSString stringWithFormat:@"HaiBao15_%d",i]];
        [self.picArray15 addObject:img];
    }
    
    return self.picArray15;
}

- (NSMutableArray *)getYTHKSData{
    
    self.ytHKSArray = [[NSMutableArray alloc] init];
    
    YTFCVideoObj *ytHKS_Obj17 = [[YTFCVideoObj alloc] initWithTitle:@"毅腾会客室 闫相闯" videoUrl:@"http://v.qq.com/iframe/player.html?vid=h0134szkbow&tiny=0&auto=0"];
    YTFCVideoObj *ytHKS_Obj16 = [[YTFCVideoObj alloc] initWithTitle:@"毅腾会客室 聊聊冰城球迷那点事儿" videoUrl:@"http://v.qq.com/iframe/player.html?vid=p0134rnc01l&tiny=0&auto=0"];
    YTFCVideoObj *ytHKS_Obj15 = [[YTFCVideoObj alloc] initWithTitle:@"毅腾会客室 季骁宣" videoUrl:@"http://v.qq.com/iframe/player.html?vid=e0135k8k80f&tiny=0&auto=0"];
    YTFCVideoObj *ytHKS_Obj14 = [[YTFCVideoObj alloc] initWithTitle:@"毅腾会客室 亚当休斯" videoUrl:@"http://v.qq.com/iframe/player.html?vid=v0136empimz&tiny=0&auto=0"];
    YTFCVideoObj *ytHKS_Obj13 = [[YTFCVideoObj alloc] initWithTitle:@"毅腾会客室 许东与耿志庆" videoUrl:@"http://v.qq.com/iframe/player.html?vid=y0136kqwe5g&tiny=0&auto=0"];
    YTFCVideoObj *ytHKS_Obj12 = [[YTFCVideoObj alloc] initWithTitle:@"毅腾会客室 福福" videoUrl:@"http://v.qq.com/iframe/player.html?vid=g0137qhr41h&tiny=0&auto=0"];
    YTFCVideoObj *ytHKS_Obj11 = [[YTFCVideoObj alloc] initWithTitle:@"毅腾会客室 张飞虎与他的青训故事" videoUrl:@"http://v.qq.com/iframe/player.html?vid=p0138bdjrxq&tiny=0&auto=0"];
    YTFCVideoObj *ytHKS_Obj10 = [[YTFCVideoObj alloc] initWithTitle:@"毅腾会客室 奶爸郭纯泉的足球经" videoUrl:@"http://v.qq.com/iframe/player.html?vid=m0139oi8ubv&tiny=0&auto=0"];
    YTFCVideoObj *ytHKS_Obj9 = [[YTFCVideoObj alloc] initWithTitle:@"毅腾会客室 “大牛”韩方腾的足球人生" videoUrl:@"http://v.qq.com/iframe/player.html?vid=m0139mpmsfe&tiny=0&auto=0"];
    YTFCVideoObj *ytHKS_Obj8 = [[YTFCVideoObj alloc] initWithTitle:@"毅腾会客室 曹磊畅聊中超得失" videoUrl:@"http://v.qq.com/iframe/player.html?vid=v0140uim3cv&tiny=0&auto=0"];
    YTFCVideoObj *ytHKS_Obj7 = [[YTFCVideoObj alloc] initWithTitle:@"毅腾会客室 李健" videoUrl:@"http://v.qq.com/iframe/player.html?vid=s0140p96fx8&tiny=0&auto=0"];
    YTFCVideoObj *ytHKS_Obj6 = [[YTFCVideoObj alloc] initWithTitle:@"毅腾会客室 卜鑫" videoUrl:@"http://v.qq.com/iframe/player.html?vid=x0154oczakq&tiny=0&auto=0"];
    YTFCVideoObj *ytHKS_Obj5 = [[YTFCVideoObj alloc] initWithTitle:@"毅腾会客室 球迷也有萌妹子" videoUrl:@"http://v.qq.com/iframe/player.html?vid=x0157g48ycc&tiny=0&auto=0"];
    YTFCVideoObj *ytHKS_Obj4 = [[YTFCVideoObj alloc] initWithTitle:@"毅腾会客室 韩旭" videoUrl:@"http://v.qq.com/iframe/player.html?vid=r0157dgch74&tiny=0&auto=0"];
    YTFCVideoObj *ytHKS_Obj3 = [[YTFCVideoObj alloc] initWithTitle:@"毅腾会客室 柏小磊" videoUrl:@"http://v.qq.com/iframe/player.html?vid=l0159vt2kaz&tiny=0&auto=0"];
    YTFCVideoObj *ytHKS_Obj2 = [[YTFCVideoObj alloc] initWithTitle:@"毅腾会客室 李鑫" videoUrl:@"http://v.qq.com/iframe/player.html?vid=f0161xdgszh&tiny=0&auto=0"];
    YTFCVideoObj *ytHKS_Obj1 = [[YTFCVideoObj alloc] initWithTitle:@"毅腾会客室 张飞虎谈毅腾青训" videoUrl:@"http://v.qq.com/iframe/player.html?vid=n0163c8didv&tiny=0&auto=0"];

    
    
    [self.ytHKSArray addObject:ytHKS_Obj1];
    [self.ytHKSArray addObject:ytHKS_Obj2];
    [self.ytHKSArray addObject:ytHKS_Obj3];
    [self.ytHKSArray addObject:ytHKS_Obj4];
    [self.ytHKSArray addObject:ytHKS_Obj5];
    [self.ytHKSArray addObject:ytHKS_Obj6];
    [self.ytHKSArray addObject:ytHKS_Obj7];
    [self.ytHKSArray addObject:ytHKS_Obj8];
    [self.ytHKSArray addObject:ytHKS_Obj9];
    [self.ytHKSArray addObject:ytHKS_Obj10];
    [self.ytHKSArray addObject:ytHKS_Obj11];
    [self.ytHKSArray addObject:ytHKS_Obj12];
    [self.ytHKSArray addObject:ytHKS_Obj13];
    [self.ytHKSArray addObject:ytHKS_Obj14];
    [self.ytHKSArray addObject:ytHKS_Obj15];
    [self.ytHKSArray addObject:ytHKS_Obj16];
    [self.ytHKSArray addObject:ytHKS_Obj17];
    
    
    return self.ytHKSArray;
}

@end
