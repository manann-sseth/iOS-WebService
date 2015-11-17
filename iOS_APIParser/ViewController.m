//
//  ViewController.m
//  iOS_APIParser
//
//  Created by Dhruvik Rao on 16/11/15.
//  Copyright © 2015 Dhruvik Rao. All rights reserved.
//

#import "ViewController.h"

#import "APIParser+User.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Sample web service calling

- (void) getPostForUser : (NSString *) user_id {
    
    APIParser *service = [APIParser sharedMediaServer];
    
    [service UserRequestWithType:APIUserGetPosts
                       parameters:[NSString stringWithFormat:@"userId=%d", (int)user_id]
                      cookieValue:nil
                    customeobject:nil
                            block:^(NSError *error, id objects, NSString *responseString, NSString *nextUrl, NSMutableArray *responseArray)
    {
        if (error) {
            
            //Handle Error
        }
        else {
            
            if (responseArray.count > 0) {
                
                //Handle Response Array
            }
            else {
                
                //Handle null response array
            }
        }
    }];
}



@end
