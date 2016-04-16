//
//  ViewController.m
//  Dapao
//
//  Created by AaronZhou on 16/4/16.
//  Copyright © 2016年 marttinli. All rights reserved.
//

#import "MainViewController.h"
#import <JSONModel/JSONHTTPClient.h>
@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)sign_in:(id)sender {
    // 添加额外的头信息
    [[JSONHTTPClient requestHeaders] setValue:@"https://api.cn.ronghub.com" forKey:@"Host"];
    
    //发送 post, get 请求.
    [JSONHTTPClient postJSONFromURLWithString:@"/user/getToken"
                                       params:@{@"userId":@"002",@"name":@"marttinli",@"portraitUri":@"http://qlogo2.store.qq.com/qzone/841538513/841538513/100?1372559697"}
                                   completion:^(id json, JSONModelError *err) {
                                       
                                       //检查错误, 处理 json ...
                                       NSLog(@"json:%@",json);
                                       NSLog(@"err:%@",err);
                                       
                                   }];

}

@end
