//
//  ViewController.m
//  MyJuhua
//
//  Created by lanou on 16/5/28.
//  Copyright © 2016年 lingzhi. All rights reserved.
//

#import "ViewController.h"
#import "MyJuhua.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [MyJuhua startLoadingAtsuperView:self.view afterDelay:3];
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
