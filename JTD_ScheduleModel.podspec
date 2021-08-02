#
# Be sure to run `pod lib lint JTD_ScheduleModel.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'JTD_ScheduleModel'
  s.version          = '0.1.2.2'
  s.summary          = 'A short description of JTD_ScheduleModel.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/WangXHProgram/JTD_ScheduleModel'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'MrWang' => 'kwangxh@163.com' }
  s.source           = { :git => 'https://github.com/WangXHProgram/JTD_ScheduleModel.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'JTD_ScheduleModel/Classes/**/*.{h,m}'
  s.resources = ['JTD_ScheduleModel/Classes/**/*.{xib}','JTD_ScheduleModel/Classes/**/*.{xib}']
  
  # s.resource_bundles = {
  #  'JTD_ScheduleModelBundle' => ['JTD_ScheduleModel/Assets','JTD_ScheduleModel/Classes/**/*.{xib}']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
