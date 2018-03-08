#
# Be sure to run `pod lib lint MyFramework.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MyFramework'
  s.version          = '0.1.0'
  s.summary          = 'MyFramework for test'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This pod is MyFramework.
                       DESC

  s.homepage         = 'https://github.com/kunichiko/SwiftFrameworkTest-MyFramework'
  s.license          = 'MIT'
  s.author           = 'Kunihiko Ohnaka'
  s.source           = { :git => 'https://github.com/kunichiko/SwiftFrameworkTest-MyFramework.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'MyFramework/Classes/**/*'
  
  s.resources = 'MyFramework/Assets/**/*'

  s.dependency 'RxSwift', '~> 4.1.2'
end
