//
//  LSIAgent.m
//  NOCList-ObjC
//
//  Created by Austin Potts on 3/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "LSIAgent.h"

@implementation LSIAgent

- (instancetype) initWithCoverName: (NSString *) coverName realName: (NSString *) realName accessLevel: (int *) accessLevel compromised: (BOOL *) compromised {
    
    self = [super init];
    
    if (self) {
        _coverName = coverName;
        _realName = realName;
        
         NSNumber *accessNumber = [NSNumber numberWithInt:*accessLevel];
        _accessLevel = accessNumber;
        
         NSNumber *compromisedValue = [NSNumber numberWithInt:*compromised];
        _compromised = compromisedValue;
    }
    return self;
    
    
}

@end
