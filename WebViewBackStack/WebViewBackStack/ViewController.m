//
//  ViewController.m
//  WebViewBackStack
//
//  Created by wangrui on 2017/5/5.
//  Copyright © 2017年 wangrui. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSURL *url = [NSURL URLWithString:@"https://weidian.com/?userid=1189737524&wfr=wx_profile&from=singlemessage&isappinstalled=0"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
}

- (IBAction)onClickBack:(UIBarButtonItem *)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
