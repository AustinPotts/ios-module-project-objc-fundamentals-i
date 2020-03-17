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
        
        //Step 2
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
        
        //Step 2
        //Declare an NSArray for the objects
        NSArray *agents = @[ethan, jim, claire, eugene, franz, luther, sarah, max, hannah, jack, frank];
        
        
        //Step 3
        //Create a for loop to iterate over each agent and determine the total amount of compromised agents (can use a traditional for loop or a for-in fast enumeration).
        int compAgents = 0;
        for (LSIAgent *agent in agents) {
            if ([agent compromised] == [NSNumber numberWithInt:1]) {
                compAgents++;
            }
        }
        
        //Print a message revealing the total number of compromised agents.
        NSLog(@"Number of agents compromised: %i", compAgents);
        
      
        
        //Step 5
        //Create a loop that finds high risk agents. It should print out the real names and access levels of agents with level 8 or higher. If that agent is also currently compromised, add WARNING COMPROMISED to the end of the string that includes their name and access level.

        for (LSIAgent *agent in agents) {
            if ([[agent accessLevel] isGreaterThanOrEqualTo: [NSNumber numberWithInt:8]]) {
                if ([agent compromised] == [NSNumber numberWithInt:1]) {
                    NSLog(@"%@, level: %@ **WARNING** **COMPROMISED**", [agent realName], [agent accessLevel]);
                } else {
                    NSLog(@"%@, level: %@", [agent realName], [agent accessLevel]);
                }
            }
        }
        
        
        //Step 6
        //Create a loop that finds totals for low, mid, and high level agents. Low level agents are 4 or lower, mid are 5-7, and high level agents are 8 or above. After the loop, print a statement like the following:
        int lowLevelAgents = 0;
        int midLevelAgents = 0;
        int highLevelAgents = 0;
        
        
        for (LSIAgent *agent in agents) {
            if ([[agent accessLevel] isGreaterThanOrEqualTo: [NSNumber numberWithInt:8]]) {
                highLevelAgents++;
            } else if ([[agent accessLevel] isGreaterThanOrEqualTo:[NSNumber numberWithInt:5]] && [[agent accessLevel] isLessThanOrEqualTo: [NSNumber numberWithInt:7]]) {
                midLevelAgents++;
            } else {
                lowLevelAgents++;
            }
        }
        NSLog(@"%d low level agents, %d mid level agents, %d high level agents", lowLevelAgents, midLevelAgents, highLevelAgents);
        
    }
    return 0;
}
