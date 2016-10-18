//
//  UIImage+runtime.m
//  SimpleRuntime
//
//  Created by 康世朋 on 2016/10/18.
//  Copyright © 2016年 康世朋. All rights reserved.
//

#import "UIImage+runtime.h"
#import "SPRuntime.h"

@implementation UIImage (runtime)
+ (void)load {
    sp_runtime_exchangeImplementations(self, @selector(imageWithName:), @selector(imageNamed:));
}

+ (instancetype)imageWithName:(NSString *)name {
    UIImage *img = [self imageWithName:name];
    if (img == nil) {
        NSLog(@"rutim：图片不存在");
    }
    return img;
}

@end
