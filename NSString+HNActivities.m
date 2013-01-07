//
//  NSString+HNActivities.m
//  HNActivities
//
//  Created by Josh Chung on 12/5/12.
//  Copyright (c) 2012 minorblend. All rights reserved.
//

#import "NSString+HNActivities.h"

@implementation NSString (HNActivities)

- (NSString *)URLEscapedString {
  static NSString *const charactersToBeEscaped = @"!*'();:@&=+$,/?%#[]";

  return (__bridge_transfer NSString *)CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault,
                                                                               (__bridge CFStringRef)self,
                                                                               NULL,
                                                                               (__bridge CFStringRef)charactersToBeEscaped,
                                                                               kCFStringEncodingUTF8);
}
@end
