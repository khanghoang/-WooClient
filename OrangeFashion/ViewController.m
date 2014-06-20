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

static NSString * const PATH = @"http://128.199.175.238/wc-api/v1";

static NSString * const OAUTH_CUSTOMER_KEY = @"ck_047f2bea42bf1038e13e763cba9dfc34";
static NSString * const OAUTH_CUSTOMER_SERCET = @"cs_ff26a2fb3f2458e4c73230648344fd42";

@interface ViewController ()
            

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self testOne];
}

- (void)testOne {

////    AFOAuth1Client *twitterClient = [[AFOAuth1Client alloc] initWithBaseURL:[NSURL URLWithString:@"http://128.199.175.238/wc-api/v1"] key:@"ck_047f2bea42bf1038e13e763cba9dfc34" secret:@"cs_ff26a2fb3f2458e4c73230648344fd42"];
//    AFOAuth1Client *twitterClient = [[AFOAuth1Client alloc] initWithBaseURL:[NSURL URLWithString:@"http://jkshop.vn/wc-api/v1"] key:@"ck_458536ad051bb79e5df8b4b9efe394e6" secret:@"cs_cc2a70ecf7878ebe44c0b66feeb98cc0"];
//
//    NSMutableDictionary *params = [[twitterClient OAuthParameters] mutableCopy];
//
////    NSString *signature = [twitterClient OAuthSignatureForMethod:@"GET" path:@"http://128.199.175.238/wc-api/v1/orders" parameters:params token:token];
//    NSString *signature = [twitterClient OAuthSignatureForMethod:@"GET" path:@"http://jkshop.vn/wc-api/v1/products" parameters:params token:nil];
//    [params addEntriesFromDictionary:@{@"oauth_signature": signature}];
//
//    [twitterClient registerHTTPOperationClass:[AFJSONRequestOperation class]];
//    twitterClient.parameterEncoding = AFJSONParameterEncoding;
//
////    AFHTTPClient *client = [[AFHTTPClient alloc] initWithBaseURL:[NSURL URLWithString:@"http://128.199.175.238/wc-api/v1"]];
//    AFHTTPClient *client = [[AFHTTPClient alloc] initWithBaseURL:[NSURL URLWithString:@"http://jkshop.vn/wc-api/v1"]];
//
//    [client setDefaultHeader:@"Accept" value:@"application/json"];
//    [client getPath:@"products" parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
//
//        NSError *error = nil;
//        NSString *jsonString = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
//
//        NSRange range = [jsonString rangeOfString:@"{"];
//        if (range.location != NSNotFound) {
//            jsonString = [jsonString substringFromIndex:range.location];
//        }
//
//
//        NSData *data = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
//        NSDictionary *dictionnary = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
//
//
//    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
//
//
//    }];

    AFOAuth1OneLeggedClient *client = [[AFOAuth1OneLeggedClient alloc] initWithBaseURL:[NSURL URLWithString:PATH] key:OAUTH_CUSTOMER_KEY secret:OAUTH_CUSTOMER_SERCET];

    [client getPath:@"orders" parameters:@{@"status": @"pending"} success:^(AFHTTPRequestOperation *operation, id responseObject) {

        NSError *error = nil;
        NSString *jsonString = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];

        NSRange range = [jsonString rangeOfString:@"{"];
        if (range.location != NSNotFound) {
            jsonString = [jsonString substringFromIndex:range.location];
        }


        NSData *data = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
        NSDictionary *dictionnary = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];



    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {

    }];
}


@end
