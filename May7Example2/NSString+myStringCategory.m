//
//  NSString+myStringCategory.m
//  May7Example2
//
//  Created by Kazi Tamanna on 2019-05-07.
//  Copyright © 2019 Kazi Tamanna. All rights reserved.
//

#import "NSString+myStringCategory.h"

@implementation NSString (myStringCategory)
+(NSData *)removeJsongP:(NSString*)content{
    content = [content substringFromIndex:39];
    content = [content substringToIndex:content.length -2];
    return [content dataUsingEncoding:NSUTF8StringEncoding];
}
@end
