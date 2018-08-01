#
# Be sure to run `pod lib lint FlatActionSheet.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'FlatActionSheet'
    s.version          = '0.1.0'
    s.summary          = 'A flat designed action sheet.'
    
    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    
    s.description      = 'A flat designed action sheet useful for those who want a sleeker-looking action sheet.'
    
    s.homepage         = 'https://github.com/educrate/flat-action-sheet-ios'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'christianampe' => 'christianampe.work@gmail.com' }
    s.source           = { :git => 'https://github.com/educrate/flat-action-sheet-ios.git', :tag => s.version.to_s }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
    
    s.platform              = :ios
    s.ios.deployment_target = '9.3'
    s.swift_version         = '4.1'
    
    s.source_files = 'FlatActionSheet/Classes/**/*'
    
    # s.resource_bundles = {
    #   'FlatActionSheet' => ['FlatActionSheet/Assets/*.png']
    # }
    
    # s.public_header_files = 'Pod/Classes/**/*.h'
    # s.frameworks = 'UIKit', 'MapKit'
    # s.dependency 'AFNetworking', '~> 2.3'
end
