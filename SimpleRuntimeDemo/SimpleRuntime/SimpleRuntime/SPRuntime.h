//
//  SPRuntime.h
//  SimpleRuntime
//
//  Created by 康世朋 on 2016/10/18.
//  Copyright © 2016年 康世朋. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SPRuntime : NSObject

@end

void sp_runtime_exchangeImplementations(Class clas, SEL afterSEL, SEL beforeSEL);
