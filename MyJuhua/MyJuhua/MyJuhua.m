//
//  MyJuhua.m
//  MyJuhua
//
//  Created by lanou on 16/5/28.
//  Copyright © 2016年 lingzhi. All rights reserved.
//

#import "MyJuhua.h"


#define acIVViewBackColor [UIColor colorWithRed:66/255.0 green:167/255.0 blue:27/255.0 alpha:0.2]
#define W [UIScreen mainScreen].bounds.size.width
#define H [UIScreen mainScreen].bounds.size.height



@implementation MyJuhua



+(void)startLoadingAtsuperView:(UIView *)superView afterDelay:(NSTimeInterval)second
{
    
    //定义一个view放在屏幕中间
    
    MyJuhua *myjuhua=[[MyJuhua alloc]initWithFrame:CGRectMake(W/2-50, H/2-50, 100, 100)];
    
    UIActivityIndicatorView *acIV=[[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    
    acIV.frame=CGRectMake(0, 0, 100, 100);
    
    acIV.color=[UIColor orangeColor];
    
    //        [self.acIV startAnimating];//错误①因为这个导致没有显示
    acIV.backgroundColor=acIVViewBackColor;
    
    
    acIV.layer.cornerRadius = 10;//设圆角 label在里面所以不会影响其圆角
    
    [myjuhua addSubview:acIV];
    
    [acIV startAnimating];
    
    
    
    UILabel *label=[[UILabel alloc]init];
    
    label.frame=CGRectMake(10,70,80,40);//重合 ，写在内部
    
    label.font=[UIFont systemFontOfSize:13];
    
    label.textAlignment=NSTextAlignmentCenter;
    
    label.text=@"努力加载中……";
    
    label.textColor=[UIColor grayColor];//settextcolor
    
    [acIV addSubview:label];//如果不是加在acTV上导致延迟消失后还剩label
    
    [superView addSubview:myjuhua];
    
    
    //调用自己的方法 withObject 方法参数  afterDelay 在xx延迟
    [myjuhua performSelector:@selector(stopLoading:) withObject:acIV afterDelay:second];
}


-(void)stopLoading:(UIActivityIndicatorView *)acIV
{
    
    [acIV stopAnimating];
    [acIV removeFromSuperview];
    
    
    
    
    
    
}













@end
