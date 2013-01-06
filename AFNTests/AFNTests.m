//
//  AFNTests.m
//  AFNTests
//
//  Created by Ignazio Calò on 6/1/13.
//  Copyright (c) 2013 IgnazioC. All rights reserved.
//

#import "AFNTests.h"
#import "Person.h"

@implementation AFNTests

- (void)setUp
{
    [super setUp];
    
    NSLog(@"This class boundle: %@", [NSBundle bundleForClass:[self class]]);
    NSLog(@"Person boundle: %@", [NSBundle bundleForClass:[Person class]]);
    
    [MagicalRecord setupCoreDataStackWithStoreNamed:@"AFN.sqlite"];
    Person *p = [Person createEntity];
    p.name = @"Jhon";
    NSLog(@"%@", p.name);
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testExample
{
    STFail(@"Unit tests are not implemented yet in AFNTests");
}

@end
