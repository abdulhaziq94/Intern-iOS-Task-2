//
//  Person.h
//  jsonTest
//
//  Created by Haziq Nardin on 3/20/17.
//  Copyright © 2017 Haziq Nardin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PersonFriends.h"

@interface Person : NSObject
    
@property (nonatomic, assign) BOOL isActive;
@property (nonatomic, strong) NSString *phone;
@property (nonatomic, strong) NSString *eyeColor;
@property (nonatomic, assign) double age;
@property (nonatomic, strong) NSString *picture;
@property (nonatomic, strong) NSString *about;
@property (nonatomic, strong) NSString *personId;
@property (nonatomic, strong) NSString *company;
@property (nonatomic, strong) NSString *balance;
@property (nonatomic, strong) NSString *address;
@property (nonatomic, strong) NSArray *friends;
@property (nonatomic, strong) NSString *email;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *gender;




@end
