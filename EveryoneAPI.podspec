#
# Be sure to run `pod lib lint EveryoneAPI.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "EveryoneAPI"
  s.version          = "0.9.3"
  s.summary          = "An objective-c wrapper for EveryoneAPI.com's API"
  s.description      = <<-DESC
                       To retrieve all information for EveryoneAPI use the following:
                            EveryoneAPI *everyoneAPI = [[EveryoneAPI alloc] initWithAccountSID:@"ACb8444c3013dc40518e46b48c91f82ba0" withAuthToken:@"AUe90abecac85645ca8a314d41e9b55079"];

                            [everyoneAPI getInformation:EveryoneAPIReturnAllInfo forPhoneNumber:@"5551234567" withSuccessHandler:^(EveryoneAPIResponseObject *responseObject){
                                } withErrorHandler:^(NSError *error, NSNumber *statusCode, NSString *readableError){
                            }];
                        See the mask in EveryoneAPI.h for retrieving specific information, and EveryoneAPIResponseObject for an easy model wrapper
                       DESC
  s.homepage         = "https://github.com/msencenb/EveryoneAPI"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Matt Sencenbaugh" => "matt.sencenbaugh@gmail.com" }
  s.source           = { :git => "https://github.com/msencenb/EveryoneAPI.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'EveryoneAPI' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
