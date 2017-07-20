//
//  ViewController.m
//  IPAddressTest
//
//  Created by mac on 17/3/23.
//  Copyright © 2017年 cai. All rights reserved.
//

#import "ViewController.h"
#import "GetIPAddress.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor purpleColor];
    
    
    NSString *ip = [GetIPAddress getIPAddress:YES];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 100, 300, 100)];
    label.numberOfLines = 0;
    label.text = [NSString stringWithFormat:@"IPV4地址: %@", ip];
    [self.view addSubview:label];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
