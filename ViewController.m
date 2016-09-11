//
//  ViewController.m
//  test_UIApperance
//
//  Created by 傅勇权 on 16/9/11.
//  Copyright © 2016年 1Piao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UISegmentedControl *segemt;

@end

@implementation ViewController

/**
 
 appearance可以设置一些公共的属性，前提是这些属性后面包含 UI_APPEARANCE_SELECTOR
 如：UISwitch 的onTintColor 才可以整体设置
 @property(nullable, nonatomic, strong) UIColor *onTintColor NS_AVAILABLE_IOS(5_0) UI_APPEARANCE_SELECTOR;
 
 //appearance实现switch的换肤
 
 */

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //只有属性或者方法后有apprace才可以整体设置
    UISwitch *s1 = [[UISwitch alloc]init];
    s1.on = YES;
    s1.center = CGPointMake(100, 100);
    [self.view addSubview:s1];
    
    UISwitch *s2 = [[UISwitch alloc]init];
    s2.on = YES;
    s2.center = CGPointMake(200, 100);
    [self.view addSubview:s2];
    
    UISwitch *s3 = [[UISwitch alloc]init];
    s3.on = YES;
    s3.center = CGPointMake(300, 100);
    [self.view addSubview:s3];
    
    UISwitch *s4 = [[UISwitch alloc]init];
    s4.on = YES;
    s4.center = CGPointMake(100, 200);
    [self.view addSubview:s4];
    
    UISwitch *s5 = [[UISwitch alloc]init];
    s5.on = YES;
    s5.center = CGPointMake(200, 200);
    [self.view addSubview:s5];
    
    UISwitch *s6 = [[UISwitch alloc]init];
    s6.on = YES;
    s6.center = CGPointMake(300, 200);
    [self.view addSubview:s6];
    
}

//  然后在UISegmentedControl的值改变方法中设置颜色改变，先移除，再添加
- (IBAction)SegmentChange:(UISegmentedControl *)sender {
    
    NSLog(@"%ld",(long)sender.selectedSegmentIndex);
    switch (sender.selectedSegmentIndex) {
        case 0:
            [UISwitch appearance].onTintColor = [UIColor redColor];
            break;
        case 1:
            [UISwitch appearance].onTintColor = [UIColor blueColor];
            break;
        case 2:
            [UISwitch appearance].onTintColor = [UIColor blackColor];
            break;
        default:
            break;
    }
    //因为在添加那一刻已经添加了属性，随意移除后从新添加
    [self.view removeFromSuperview];
    
    //添加
    [[UIApplication sharedApplication].keyWindow addSubview:self.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
