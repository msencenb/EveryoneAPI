# EveryoneAPI

[![CI Status](http://img.shields.io/travis/Matt Sencenbaugh/EveryoneAPI.svg?style=flat)](https://travis-ci.org/Matt Sencenbaugh/EveryoneAPI)
[![Version](https://img.shields.io/cocoapods/v/EveryoneAPI.svg?style=flat)](http://cocoadocs.org/docsets/EveryoneAPI)
[![License](https://img.shields.io/cocoapods/l/EveryoneAPI.svg?style=flat)](http://cocoadocs.org/docsets/EveryoneAPI)
[![Platform](https://img.shields.io/cocoapods/p/EveryoneAPI.svg?style=flat)](http://cocoadocs.org/docsets/EveryoneAPI)

## Requirements

iOS 8.0 or higher

## Installation

EveryoneAPI is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "EveryoneAPI"

## Usage

After installing use the following to query the EveryoneAPI for all information related to a phone number

	EveryoneAPI *everyoneAPI = [[EveryoneAPI alloc] initWithAccountSID:@"ACb8444c3013dc40518e46b48c91f82ba0" withAuthToken:@"AUe90abecac85645ca8a314d41e9b55079"];
    [everyoneAPI getInformation:EveryoneAPIReturnAllInfo forPhoneNumber:@"5551234567" withSuccessHandler:^(EveryoneAPIResponseObject *responseObject){
    	//Success handler here
    } withErrorHandler:^(NSError *error, NSNumber *statusCode, NSString *readableError){
    	//Error handler here
    }];

Checkout EveryoneAPIResponseObject.h for an easy wrapper around the returned JSON. Also see EveryoneAPI.h for the bitmasks you can use to request specific information.

## Author

Matt Sencenbaugh, matt.sencenbaugh@gmail.com

## License

EveryoneAPI is available under the MIT license. See the LICENSE file for more info.

