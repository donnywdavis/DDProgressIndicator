#
# Be sure to run `pod lib lint DDProgressIndicator.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DDProgressIndicator'
  s.version          = '1.0.0'
  s.summary          = 'A protocol to display an activity spinner for any UIViewController.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A protocol to display an activity spinner for any UIViewController. The default functions of the protocol will
display a UIView centered on the screen with an activity indicator in the middle along with a loading message
above it. The color of the text, activity spinner, and the background of the view can be customized.
                       DESC

  s.homepage         = 'https://github.com/donnywdavis/DDProgressIndicator'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Donny Davis' => 'donnywdavis@icloud.com' }
  s.source           = { :git => 'https://github.com/donnywdavis/DDProgressIndicator.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/donnywdavis'

  s.ios.deployment_target = '9.0'

  s.source_files = 'DDProgressIndicator/Classes/**/*'
  
  # s.resource_bundles = {
  #   'DDProgressIndicator' => ['DDProgressIndicator/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
