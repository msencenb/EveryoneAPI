//
//  EveryoneAPITests.m
//  EveryoneAPITests
//
//  Created by Matt Sencenbaugh on 12/11/2014.
//  Copyright (c) 2014 Matt Sencenbaugh. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <EveryoneAPI/EveryoneAPI.h>

@interface EveryoneAPITests : XCTestCase
@property(nonatomic,strong)EveryoneAPI *everyoneAPI;
@end

@implementation EveryoneAPITests

- (void)setUp
{
    [super setUp];
    self.everyoneAPI = [[EveryoneAPI alloc] initWithAccountSID:@"ACb8444c3013dc40518e46b48c91f82ba0" withAuthToken:@"AUe90abecac85645ca8a314d41e9b55079"];
}

- (void)tearDown
{
    [super tearDown];
}

// NOTE that even though all information is requested, not all information will be returned from the EveryoneAPI if it doesn't exist on their server.
- (void)testRequestAllInformation
{
    XCTestExpectation *expectation = [self expectationWithDescription:@"Testing retrieve all info"];
    
    [self.everyoneAPI getInformation:EveryoneAPIReturnAllInfo forPhoneNumber:@"5551234567" withSuccessHandler:^(EveryoneAPIResponseObject *responseObject){
        NSLog(@"%@",responseObject);
        XCTAssertNotNil(responseObject);
        [expectation fulfill];
    } withErrorHandler:^(NSError *error, NSNumber *statusCode, NSString *readableError){
        XCTFail(@"Failed to get all info for number");
    }];
    
    [self waitForExpectationsWithTimeout:5.0 handler:^(NSError *error) {
        if(error)
        {
            XCTFail(@"Expectation Failed with error: %@", error);
        }
    }];
}

@end
