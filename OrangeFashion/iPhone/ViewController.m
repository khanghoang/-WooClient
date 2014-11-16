//
//  ViewController.m
//  OrangeFashion
//
//  Created by Triệu Khang on 16/6/14.
//  Copyright (c) 2014 Triệu Khang. All rights reserved.
//
//
#import "ViewController.h"
#import <AFNetworking.h>
#import "AFOAuth1Client.h"
#import "AFOAuth1OneLeggedClient.h"

static NSString * const PATH = @"http://128.199.175.238/wc-api/v2";

static NSString * const OAUTH_CUSTOMER_KEY = @"ck_047f2bea42bf1038e13e763cba9dfc34";
static NSString * const OAUTH_CUSTOMER_SERCET = @"cs_ff26a2fb3f2458e4c73230648344fd42";

@interface ViewController ()
            

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self loadData];
}

- (void)loadData {

    AFOAuth1OneLeggedClient *client = [[AFOAuth1OneLeggedClient alloc] initWithBaseURL:[NSURL URLWithString:PATH] key:OAUTH_CUSTOMER_KEY secret:OAUTH_CUSTOMER_SERCET];

    [client getPath:@"orders" parameters:@{@"status": @"pending"} success:^(AFHTTPRequestOperation *operation, id responseObject) {

        

    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {

    }];
}


@end
