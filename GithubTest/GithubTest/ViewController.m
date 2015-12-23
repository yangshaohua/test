//
//  ViewController.m
//  GithubTest
//
//  Created by shaohua6 on 15/12/23.
//  Copyright © 2015年 shaohua6. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIWebView *view = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, 320, 568)];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    
    [view loadHTMLString:[[NSString alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"table.html" ofType:nil] encoding:NSUTF8StringEncoding error:nil] baseURL:nil];
}

- (void)testCache
{
    //测试cache   限制个数  默认的话会把最先加进去的给remove掉
    
    NSCache *cache = [[NSCache alloc] init];
    cache.countLimit = 5;
    [cache setObject:@"1" forKey:@"1"];
    [cache setObject:@"2" forKey:@"2"];
    [cache setObject:@"3" forKey:@"3"];
    [cache setObject:@"4" forKey:@"4"];
    [cache setObject:@"5" forKey:@"5"];
    [cache setObject:@"6" forKey:@"6"];
}
@end
