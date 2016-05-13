//
//  ChannleDayDataController.m
//  ZlBI
//
//  Created by zhouhuan on 16/5/11.
//  Copyright © 2016年 zhouhuan. All rights reserved.
//

#import "ChannleDayDataController.h"
#import "ZlGroupButtonView.h"
#import "ZlChannelDataSummaryView.h"
#import "ZlNaviTitlePopupMenuView.h"
#import "KxMenu.h"
@interface ChannleDayDataController ()

//@property (nonatomic, strong) ZlGroupButtonView         *               groupbtn;
@property (nonatomic, strong) ZlChannelDataSummaryView  *               dataView;


@property (nonatomic, strong) NSMutableArray            *               statusList;


@property (nonatomic, strong) ZlNaviTitlePopupMenuView  *               MenuTitleView;

@end

@implementation ChannleDayDataController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.extendedLayoutIncludesOpaqueBars = NO;
    self.modalPresentationCapturesStatusBarAppearance = NO;
    self.navigationController.view.backgroundColor = [UIColor whiteColor];
//    self.navigationItem.title = @"青丘狐传说-全平台";
    
    self.view.backgroundColor = [UIColor colorWithHexString:@"0xcecece"];
    
    
    _statusList = @[@"青丘狐传说－全平台",
                    @"青丘狐传说－IOS",
                    @"青丘狐传说－越狱",
                    @"青丘狐传说－安卓"].mutableCopy;

    _MenuTitleView = [[ZlNaviTitlePopupMenuView alloc] initWithTitleMsg:@"青丘狐传说－全平台" btnImage:[UIImage imageNamed:@"list@2x.png"] target:self action:@selector(MenuTitlebtnclick:)];
    _MenuTitleView.backgroundColor = [UIColor clearColor];
    
    self.dataView = [[ZlChannelDataSummaryView alloc] init];
    self.dataView.backgroundColor= [UIColor whiteColor];
    [self.view addSubview:self.dataView];
    [self.dataView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view.mas_top).with.offset(10);
        make.centerX.mas_equalTo(self.view.mas_centerX);
        make.width.mas_equalTo(self.view.mas_width).multipliedBy(0.95);
        make.height.mas_equalTo(self.view.mas_height).multipliedBy(0.2);
    }];
}
- ( void ) viewWillAppear : ( BOOL ) animated {
    _MenuTitleView.frame = CGRectMake((self.navigationController.navigationBar.frame.size.width/2)-200, 7, 300, 32);
    [self.navigationController.navigationBar addSubview:_MenuTitleView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)MenuTitlebtnclick:(id)sender
{
    NSMutableArray *menuItems = [@[
                                   [KxMenuItem menuItem:@"青丘狐传说－全平台" image:[UIImage imageNamed:@"file_menu_icon_share"] target:self action:@selector(doMenuclickAllPlatform)],
                                   [KxMenuItem menuItem:@"青丘狐传说－IOS" image:[UIImage imageNamed:@"file_menu_icon_info"] target:self action:@selector(doMenuclickIOS)],
                                   [KxMenuItem menuItem:@"青丘狐传说－安卓" image:[UIImage imageNamed:@"file_menu_icon_delete"] target:self action:@selector(doMenuclickAndroid)],
                                   [KxMenuItem menuItem:@"青丘狐传说－越狱" image:[UIImage imageNamed:@"file_menu_icon_delete"] target:self action:@selector(doMenuclickIOSJB)],
                                   ] mutableCopy];
    [menuItems setValue:[UIColor blackColor] forKey:@"foreColor"];
    CGRect senderFrame = CGRectMake([UIApplication sharedApplication].keyWindow.frame.size.width/2, 0, 0, 0);
    [KxMenu setTintColor:[UIColor whiteColor]];
    [KxMenu showMenuInView:self.view
                  fromRect:senderFrame
                 menuItems:menuItems];
}


#pragma mark -  navbar 上的menu按钮事件

-(void)doMenuclickAllPlatform
{
    NSLog(@"点击了menu的button");
    _MenuTitleView.labTitle.text = @"青丘狐传说－全平台";
}

-(void)doMenuclickIOS
{
    NSLog(@"点击了menu的button");
    _MenuTitleView.labTitle.text = @"青丘狐传说－IOS";
}
-(void)doMenuclickAndroid
{
    NSLog(@"点击了menu的button");
    _MenuTitleView.labTitle.text = @"青丘狐传说－安卓";
}
-(void)doMenuclickIOSJB
{
    NSLog(@"点击了menu的button");
    _MenuTitleView.labTitle.text = @"青丘狐传说－越狱";
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
