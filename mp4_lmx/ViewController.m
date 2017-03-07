//
//  ViewController.m
//  mp4_lmx
//
//  Created by 刘明鑫 on 15/12/5.
//  Copyright © 2015年 刘明鑫. All rights reserved.
//

#import "ViewController.h"
#import <MediaPlayer/MediaPlayer.h>
#import <AVKit/AVKit.h>
#import "drawRect.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *vvvvv;
@property (weak, nonatomic) IBOutlet UIView *aaaaa;
@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self create];
    
    
}

- (void)create
{
    drawRect *draw = [[drawRect alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    [_aaaaa insertSubview:draw atIndex:0];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
