//
//  ViewController.m
//  VideoSample001
//
//  Created by hirauchi.shinichi on 2016/06/05.
//  Copyright © 2016年 SAPPOROWORKS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    NSString *videoUrl = @"http://hls-sample.s3-website-ap-northeast-1.amazonaws.com/index.m3u8";
    NSString *htmlString = [NSString stringWithFormat:@"<video id='video' width='300' height='200' src='%@' controls autoplay></video>",videoUrl];
    [_webView loadHTMLString:htmlString baseURL:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
