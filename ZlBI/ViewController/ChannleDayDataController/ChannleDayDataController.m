//
//  ChannleDayDataController.m
//  ZlBI
//
//  Created by zhouhuan on 16/5/11.
//  Copyright © 2016年 zhouhuan. All rights reserved.
//

#import "ChannleDayDataController.h"
#import "ZlGroupButtonView.h"

@interface ChannleDayDataController ()<ZlGroupDelegate>

@property (nonatomic, strong) ZlGroupButtonView *               groupbtn;

@end

@implementation ChannleDayDataController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.extendedLayoutIncludesOpaqueBars = NO;
    self.modalPresentationCapturesStatusBarAppearance = NO;
    self.navigationController.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = _ProName;
    
    self.view.backgroundColor = [UIColor colorWithHexString:@"0xcecece"];
    
 
    
    [self settupGroupBtn];
    
    
    
}
-(void)settupGroupBtn
{
    _groupbtn = [[ZlGroupButtonView alloc] init];
    _groupbtn.delegate =self;
    
    [self.view addSubview:self.groupbtn];
    [self.groupbtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view.mas_top).with.offset(10);
        make.centerX.mas_equalTo(self.view.mas_centerX);
        make.width.mas_equalTo(self.view.mas_width).multipliedBy(0.85);
        make.height.mas_equalTo(self.view.mas_height).multipliedBy(0.08);
    }];
    //添加按钮
    UIButton * btn1= [UIButton buttonWithType:UIButtonTypeSystem];
    //    btn1.backgroundColor = [UIColor whiteColor];
    btn1.layer.cornerRadius  = 5;
    btn1.layer.borderWidth = 2;
    [btn1 setBackgroundImage:[UIImage imageWithColor:[UIColor grayColor]] forState:UIControlStateSelected];
    [btn1 setBackgroundImage:[UIImage imageWithColor:[UIColor whiteColor]] forState:UIControlStateNormal];
    [btn1 setTitle:@"测试一" forState:UIControlStateNormal];
    
    [self.groupbtn addGroupButton:btn1 withtag:@1];
    
    
    UIButton * btn2= [UIButton buttonWithType:UIButtonTypeSystem];
    //    btn2.backgroundColor = [UIColor whiteColor];
    btn2.layer.cornerRadius  = 5;
    btn2.layer.borderWidth = 2;
    [btn2 setBackgroundImage:[UIImage imageWithColor:[UIColor grayColor]] forState:UIControlStateSelected];
    [btn2 setBackgroundImage:[UIImage imageWithColor:[UIColor whiteColor]] forState:UIControlStateNormal];
    [btn2 setTitle:@"测试二" forState:UIControlStateNormal];
    
    [self.groupbtn addGroupButton:btn2 withtag:@2];
    
    UIButton * btn3= [UIButton buttonWithType:UIButtonTypeSystem];
    //    btn3.backgroundColor = [UIColor whiteColor];
    btn3.layer.cornerRadius  = 5;
    btn3.layer.borderWidth = 2;
    [btn3 setBackgroundImage:[UIImage imageWithColor:[UIColor grayColor]] forState:UIControlStateSelected];
    [btn3 setBackgroundImage:[UIImage imageWithColor:[UIColor whiteColor]] forState:UIControlStateNormal];
    [btn3 setTitle:@"测试三" forState:UIControlStateNormal];
    
    [self.groupbtn addGroupButton:btn3 withtag:@3];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)ZlGroupBtnSelecte:(id)tag
{
    NSLog(@"select id = %@",tag);
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
