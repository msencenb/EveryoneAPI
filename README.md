# EveryoneAPI

[![CI Status](http://img.shields.io/travis/Matt Sencenbaugh/EveryoneAPI.svg?style=flat)](https://travis-ci.org/Matt Sencenbaugh/EveryoneAPI)
[![Version](https://img.shields.io/cocoapods/v/EveryoneAPI.svg?style=flat)](http://cocoadocs.org/docsets/EveryoneAPI)
[![License](https://img.shields.io/cocoapods/l/EveryoneAPI.svg?style=flat)](http://cocoadocs.org/docsets/EveryoneAPI)
[![Platform](https://img.shields.io/cocoapods/p/EveryoneAPI.svg?style=flat)](http://cocoadocs.org/docsets/EveryoneAPI)

[EveryoneAPI](https://www.everyoneapi.com/) is a simple API that retrieves information based on a phone number. Jump over to [EveryoneAPI.com](https://www.everyoneapi.com/) to sign up for an account or try out one of their [sample endpoints in your browser](https://api.everyoneapi.com/v1/phone/+15551234567?account_sid=[SID]&auth_token=[TOKEN]&pretty=true).

## Requirements

iOS 8.0 or higher

## Installation

EveryoneAPI is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "EveryoneAPI"

## Usage

After installing use the following to query the EveryoneAPI for all information related to a phone number

    EveryoneAPI *everyoneAPI = [[EveryoneAPI alloc] initWithAccountSID:@"accountSID" withAuthToken:@"authToken"];
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

