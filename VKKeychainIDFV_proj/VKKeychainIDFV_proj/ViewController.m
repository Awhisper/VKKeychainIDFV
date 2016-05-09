//
//  ViewController.m
//  VKKeychainIDFV_proj
//
//  Created by Awhisper on 16/5/9.
//  Copyright © 2016年 baidu. All rights reserved.
//

#import "ViewController.h"
#import "UIDevice+VKKeychainIDFV.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString * uuid = [UIDevice VKKeychainIDFV];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
