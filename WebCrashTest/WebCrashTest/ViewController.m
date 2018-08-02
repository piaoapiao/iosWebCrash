//
//  ViewController.m
//  WebCrashTest
//
//  Created by guodong on 2018/8/2.
//  Copyright © 2018年 maizi. All rights reserved.
//

#pragma warm --  参考 https://www.cnblogs.com/lidaojian/p/4980269.html

//http://stackoverflow.com/questions/21316784/uiwebview-bug-uiwebview-cut-unrecognized-selector-sent-to-instance#

//1.在输入框中输入内容。
//
//2.点击Button让键盘消失。
//
//3。双击输入框中的内容出现选择的bar后点击剪贴。就会出现闪退的现象。


#import "ViewController.h"

//#include <WebKit/WKWebView.h>

#import <WebKit/WKWebView.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self webViewTest];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)webViewTest
{
    UIWebView *webView = [[UIWebView alloc] initWithFrame:self.view.frame];
    
    //wkwebview 无问题
//    WKWebView *webView = [[WKWebView alloc] initWithFrame:self.view.frame];
    NSURL *url = [NSURL URLWithString:@"http://oneccc.bid/iosWebCrash/web.html"];
    [webView loadRequest:[NSURLRequest requestWithURL:url]];
    [self.view addSubview:webView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
