#
# Be sure to run `pod lib lint DrdshSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DrdshSDK'
  s.version          = '2.1.8'
  s.summary          = 'To Build Excellent Customer Experience, Connect With DRDSH.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
We have influential engagement products and potent customer service with flexibility and reliability for any business.
                       DESC

  s.homepage         = 'https://github.com/htf-app/drdsh-sdk-ios'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'htf' => 'cto@htf.sa' }
  s.source           = { :git => 'https://github.com/htf-app/drdsh-sdk-ios.git', :tag => s.version.to_s }

  s.swift_version = '5.0'
  s.ios.deployment_target = '12.0'

  s.source_files = 'Sources/**/*'
  s.platform     = :ios, '12.0'
  s.dependency 'SwiftyJSON', '~> 4.0'
  s.dependency 'MBProgressHUD'
  s.dependency 'IQKeyboardManagerSwift', '6.2.1'
  s.dependency 'Socket.IO-Client-Swift','15.2.0'
   s.resource_bundles = {
     'DrdshSDK' => ['Sources/Resources/**/*','Sources/Resources/PrivacyInfo.xcprivacy'],
   }
   s.requires_arc = true
  # s.xcconfig = {  'LIBRARY_SEARCH_PATHS' => '$(SDKROOT)/usr/lib/swift',}
   s.xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64', 'IPHONEOS_DEPLOYMENT_TARGET' => '12.0'}
 #  s.pod_target_xcconfig = {'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64', 'IPHONEOS_DEPLOYMENT_TARGET' => '12.0' }
#  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64','IPHONEOS_DEPLOYMENT_TARGET' => '12.0' }
#      s.subspec "Crash" do |crash|
#         crash.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
#         crash.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
#     end
      
#   s.subspec "Crash" do |crash|
#      crash.xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
#      crash.xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
#  end
  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.ios.frameworks = ['UIKit', 'CoreGraphics', 'QuartzCore']
end
