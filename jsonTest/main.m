//
//  main.m
//  jsonTest
//
//  Created by Haziq Nardin on 3/20/17.
//  Copyright © 2017 Haziq Nardin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "PersonFriends.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        NSError *error;
        NSString *url_string = [NSString stringWithFormat:@"http://danialm.weebly.com/uploads/1/0/1/5/101578472/people.json"];
        NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:url_string]];
        id personJson = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
//        NSLog(@"item: %@", personJson);
        
        NSMutableArray *personArray = [[NSMutableArray alloc]init];
        
        
        for (NSDictionary *personInfoDict in personJson) {
           
            Person *person = [[Person alloc] init];
            person.personId = [personInfoDict objectForKey:@"_id"];
            person.about = [personInfoDict objectForKey:@"about"];
            person.address = [personInfoDict objectForKey:@"address"];
            person.age = [[personInfoDict objectForKey:@"age"] doubleValue];
            person.balance = [personInfoDict objectForKey:@"balance"];
            person.company = [personInfoDict objectForKey:@"company"];
            person.email = [personInfoDict objectForKey:@"email"];
            person.eyeColor = [personInfoDict objectForKey:@"eyeColor"];
            person.gender = [personInfoDict objectForKey:@"gender"];
            person.isActive = [[personInfoDict objectForKey:@"isActive"]boolValue];
            person.name = [personInfoDict objectForKey:@"name"];
            person.phone = [personInfoDict objectForKey:@"phone"];
            person.picture = [personInfoDict objectForKey:@"picture"];
            NSMutableArray *friendArray = [[NSMutableArray alloc]init];
            person.friends = friendArray;
            
            
            for (NSDictionary *friendInfoDict in [personInfoDict objectForKey:@"friends"]) {
                PersonFriends *friend = [[PersonFriends alloc]init];
                friend.friendsId = [[friendInfoDict objectForKey:@"id"]doubleValue];
                friend.name = [friendInfoDict objectForKey:@"name"];
                [friendArray addObject: friend];
                
            }
            
            [personArray addObject:person];
            
            for (int i = 0; i < [personArray count]; i=3){

               
                NSLog(@"name :%@", [person name]);
                NSLog(@"age : %lg", [person age]);
            }
        
        
        NSLog(@"personArray: %@", personArray);
        
        
    }
    return 0;
}
}
