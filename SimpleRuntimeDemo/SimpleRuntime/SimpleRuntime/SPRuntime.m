//
//  SPRuntime.m
//  SimpleRuntime
//
//  Created by 康世朋 on 2016/10/18.
//  Copyright © 2016年 康世朋. All rights reserved.
//

#import "SPRuntime.h"
#import <objc/runtime.h>

@implementation SPRuntime

@end

void sp_runtime_exchangeImplementations(Class clas, SEL afterSEL, SEL beforeSEL) {
    Method afterSel = class_getClassMethod(clas, afterSEL);
    Method beforeSel = class_getClassMethod(clas, beforeSEL);
    method_exchangeImplementations(afterSel, beforeSel);
}

void sp_runtime_class_addMethod(__unsafe_unretained Class cls, SEL name, IMP imp, const char *types) {
    
}
