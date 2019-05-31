//
//  YHooSearch.m
//  May7Example2
//
//  Created by Kazi Tamanna on 2019-05-07.
//  Copyright © 2019 Kazi Tamanna. All rights reserved.
//

#import "YHooSearch.h"
#import "NSString+myStringCategory.h"

@implementation YHooSearch

-(void)getInformationWithSearchkey:(NSString*)search{
    
    //url
    NSString *url = [NSString stringWithFormat: @"http://d.yimg.com/autoc.finance.yahoo.com/autoc?query=%@&region=1&lang=en&callback=YAHOO.Finance.SymbolSuggest.ssCallback", search];

    
    NSURL *yhUrl = [NSURL URLWithString:url];
    
    //creating queue with label
    dispatch_queue_t myQ = dispatch_queue_create("titleOfmyQ", nil);
    //
    dispatch_async(myQ, ^{
        //initializing error null
        NSError *err = NULL;
        
         NSString *content =  [NSString stringWithContentsOfURL:yhUrl encoding:NSUTF8StringEncoding error:&err];
         NSData *data =   [NSString removeJsongP:content];
         NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&err];
        NSArray *result = [json valueForKeyPath:@"ResultSet.Result"];
        
        if(err == NULL){
            //call back ui with the array
            dispatch_async(dispatch_get_main_queue(), ^{
                [self.delagate yhSearchDidFishWithData:result];
            });
        }
    });
    
    
  

  
   
    
    
    
    
    
    //need my document folder
    //write to that url
    
//    NSFileManager *fm = [NSFileManager defaultManager];
//   NSArray *paths =  [fm URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask];
//    NSURL *documentPath = [paths lastObject];
//
//   NSURL *filePath = [documentPath URLByAppendingPathComponent:@"myarrya.plist"];
//
//    [result writeToURL:filePath atomically:YES];
//
//    NSLog(@"%@",documentPath);
    
    
    
    
    
    //NSLog(@"%@",contact);
    
    
    
    
    
    //append the url with search key
    // go fetch information in next thread
    // make sure ints good json
    // go back to main thread and update table view
    
}

@end
