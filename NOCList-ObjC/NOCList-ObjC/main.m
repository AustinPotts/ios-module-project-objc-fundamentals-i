//
//  main.m
//  NOCList-ObjC
//
//  Created by Austin Potts on 3/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        //Use the custom init method in main.m to create agent objects for each record above.
        LSIAgent *ethan = [[LSIAgent alloc] initWithCoverName:@"Ethan Hunt" realName:@"Tom Cruise" accessLevel:(int)8 compromised:(BOOL)NO];
        LSIAgent *jim = [[LSIAgent alloc] initWithCoverName:@"Jim Phelps" realName:@"Jon Voight" accessLevel:(int)9 compromised:(BOOL)YES];
        LSIAgent *claire = [[LSIAgent alloc] initWithCoverName:@"Claire Phelps" realName:@"Emmanuelle Beart" accessLevel:(int)5 compromised:(BOOL)NO];
        LSIAgent *eugene = [[LSIAgent alloc] initWithCoverName:@"Eugene Kittridge" realName:@"Henry Czerny" accessLevel:(int)10 compromised:(BOOL)YES];
        LSIAgent *franz = [[LSIAgent alloc] initWithCoverName:@"Franz Krieger" realName:@"Jean Reno" accessLevel:(int)4 compromised:(BOOL)NO];
        LSIAgent *luther = [[LSIAgent alloc] initWithCoverName:@"Luther Stickell" realName:@"Ving Rhames" accessLevel:(int)4 compromised:(BOOL)NO];
        LSIAgent *sarah = [[LSIAgent alloc] initWithCoverName:@"Sarah Davies" realName:@"Kristin Scott Thomas" accessLevel:(int)5 compromised:(BOOL)YES];
        LSIAgent *max = [[LSIAgent alloc] initWithCoverName:@"Max RotGrab" realName:@"Vanessa Redgrave" accessLevel:(int)4 compromised:(BOOL)NO];
        LSIAgent *hannah = [[LSIAgent alloc] initWithCoverName:@"Hannah Williams" realName:@"Ingeborga Dapkūnaitė" accessLevel:(int)5 compromised:(BOOL)YES];
        LSIAgent *jack = [[LSIAgent alloc] initWithCoverName:@"Jack Harmon" realName:@"Emilio Estevez" accessLevel:(int)6 compromised:(BOOL)YES];
        LSIAgent *frank = [[LSIAgent alloc] initWithCoverName:@"Frank Barnes" realName:@"Dale Dye" accessLevel:(int)9 compromised:(BOOL)NO];
        
        //Declare an NSArray for the objects
        NSArray *agents = @[ethan, jim, claire, eugene, franz, luther, sarah, max, hannah, jack, frank];
        
        
    }
    return 0;
}
