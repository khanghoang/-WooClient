//
//  AFOAuth1OneLeggedClientTests.m
//  OrangeFashion
//
//  Created by Triệu Khang on 19/6/14.
//  Copyright (c) 2014 Triệu Khang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFOAuth1OneLeggedClient.h"
#import "Kiwi.h"

@interface AFOAuth1OneLeggedClient (AFOAuth1OneLeggedClientTests)

- (NSDictionary *)OAuthParametersWithRequest:(NSURLRequest *)request andAdditionalParams:(NSDictionary *)additionalParams;

@end

SPEC_BEGIN(AFOAuth1OneLeggedClientTests)

describe(@"AFOAuth1OneLeggedCLient", ^{
    context(@"generate the params", ^{

        __block AFOAuth1OneLeggedClient *sut;
        __block NSString *method;
        __block NSString *key;
        __block NSString *secret;
        __block NSString *urlString;

        beforeEach(^{
            method = @"GET";
            key = @"ck_047f2bea42bf1038e13e763cba9dfc34";
            secret = @"ck_047f2bea42bf1038e13e763cba9dfc34";
            urlString = @"http://128.199.175.238/wc-api/v1";

            sut = [[AFOAuth1OneLeggedClient alloc] initWithBaseURL:[NSURL URLWithString:urlString] key:key secret:secret];

        });

        afterEach(^{
            method = nil;
            key = nil;
            secret = nil;
            urlString = nil;
            sut = nil;
        });

        it(@"should have enough oauth params", ^{

            NSMutableDictionary *params = [NSMutableDictionary dictionary];
            params[@"oauth_version"] = @"";
            params[@"oauth_signature_method"] = @"";
            params[@"oauth_consumer_key"] = @"";
            params[@"oauth_timestamp"] = @"";
            params[@"oauth_nonce"] = @"";

            [sut stub:@selector(OAuthParameters) andReturn:params];

            NSString *signature = @"";
            [sut stub:@selector(OAuthSignatureForMethod:path:parameters:token:) andReturn:signature];

            NSDictionary *fullParams = [sut OAuthParametersWithRequest:nil andAdditionalParams:nil];

            [[fullParams[@"oauth_version"] shouldNot] beNil];
            [[fullParams[@"oauth_signature_method"] shouldNot] beNil];
            [[fullParams[@"oauth_consumer_key"] shouldNot] beNil];
            [[fullParams[@"oauth_timestamp"] shouldNot] beNil];
            [[fullParams[@"oauth_nonce"] shouldNot] beNil];
            [[fullParams[@"oauth_signature"] shouldNot] beNil];
        });

    });
});

SPEC_END
