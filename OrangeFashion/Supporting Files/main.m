//
//  main.m
//  OrangeFashion
//
//  Created by Triệu Khang on 16/6/14.
//  Copyright (c) 2014 Triệu Khang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WSAppDelegateiPad.h"
#import "WSAppDelegateiPhone.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        if (IS_IPAD) {
            return UIApplicationMain(argc, argv, nil, NSStringFromClass([WSAppDelegateiPad class]));
        } else {
            return UIApplicationMain(argc, argv, nil, NSStringFromClass([WSAppDelegateiPhone class]));
        }
    }
}
