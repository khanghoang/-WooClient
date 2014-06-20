//
//  AFOAuth1OneLeggedClientWooParserTests.m
//  OrangeFashion
//
//  Created by Triệu Khang on 20/6/14.
//  Copyright (c) 2014 Triệu Khang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFOAuth1OneLeggedClientWooParser.h"
#import "Kiwi.h"

SPEC_BEGIN(AFOAuth1OneLeggedClientWooParserTests)

describe(@"AFOAuth 1.0a One Legged Client WooCommerce Parse Tests", ^{

    context(@"parsing data from response object", ^{

        __block AFOAuth1OneLeggedClientWooParser *sut;

        beforeEach(^{
            sut = [[AFOAuth1OneLeggedClientWooParser alloc] init];
        });

        it(@"should return dictionary with any inputs", ^{

            NSDictionary *result = [sut wooCommerceParsedResponseObject:nil];
            [[result should] beKindOfClass:[NSDictionary class]];

        });

        it(@"should return correctly", ^{

            NSString *fakeResponseObject = @"1ASDHSDFRT-%@#AFF{\"test\": \"1\"}";
            NSData *dataFromFakeObject = [fakeResponseObject dataUsingEncoding:NSUTF8StringEncoding];
            NSDictionary *result = [sut wooCommerceParsedResponseObject:dataFromFakeObject];
            [[result[@"test"] shouldNot] beNil];

        });

        afterEach(^{
            sut = nil;
        });

    });

});

SPEC_END

