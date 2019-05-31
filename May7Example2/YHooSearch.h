//
//  YHooSearch.h
//  May7Example2
//
//  Created by Kazi Tamanna on 2019-05-07.
//  Copyright © 2019 Kazi Tamanna. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//A view needs to define all the tasks it may ask the delegate to perform in response to user interaction
@protocol YHsearchdelegate;

@interface YHooSearch : NSObject

-(void)getInformationWithSearchkey:(NSString*)search;
//
//The view needs a reference to the delegate
//The reference  are added as a properties with a type of ID, because the view doesn't care what type of class it is,
//just as long as it implements the protocols
@property(nonatomic)id<YHsearchdelegate>delagate;

@end
//A protocol as a contract between the view and its delegate
@protocol YHsearchdelegate

-(void)yhSearchDidFishWithData:(NSArray*)data;

@end
NS_ASSUME_NONNULL_END
