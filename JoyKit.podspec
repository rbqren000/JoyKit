#
# Be sure to run `pod lib lint JoyKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'JoyKit'
  s.version          = '0.1.05'
  s.summary          = 'cellTextView优化'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!


s.description      = <<-DESC
TODO: Add long description of the pod here.
DESC

s.homepage         = 'https://github.com/joy-make/JoyKit'

# s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'joy-make' => '315585646@qq.com' }
s.source           = { :git => 'https://github.com/joy-make/JoyKit.git', :tag => s.version.to_s }

# s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

s.ios.deployment_target = '7.0'
s.source_files = 'JoyKit/**/*.{h,m}'
s.resources = 'JoyKit/Assets/*'
#s.resource_bundles = {'JoyKit' => ['JoyKit/**/*.{xib,png,jpg,jpeg,plist}']}
# s.public_header_files = 'Pod/Classes/**/*.h'
# s.frameworks = 'UIKit', 'MapKit'

s.subspec 'JoyKit' do|ss|
ss.source_files = 'JoyKit/JoyKit/**/*.{h,m}'
ss.public_header_files = 'JoyKit/Views/**/*.h'
ss.dependency 'JoyKit/CellsLibruary'
ss.dependency 'JoyKit/Category'
ss.dependency 'JoyKit/Controllers'
ss.dependency 'JoyKit/Utility'
ss.public_header_files = 'JoyKit/JoyKit/**/*.h'
end

s.subspec 'Views' do|ss|
ss.source_files = 'JoyKit/Views/**/*.{h,m}'
ss.public_header_files = 'JoyKit/Views/**/*.h'
ss.dependency 'JoyKit/CellsLibruary'
ss.dependency 'JoyKit/Category'
ss.public_header_files = 'JoyKit/Views/**/*.h'
end

s.subspec 'Common' do|ss|
ss.source_files = 'JoyKit/Common/**/*.{h,m}'
ss.public_header_files = 'JoyKit/Common/**/*.h'
end

s.subspec 'Category' do|ss|
ss.source_files = 'JoyKit/Category/**/*.{h,m}'
ss.dependency 'JoyKit/Common'
ss.public_header_files = 'JoyKit/Category/**/*.h'
end

s.subspec 'Models' do|ss|
ss.source_files = 'JoyKit/Models/**/*.{h,m}'
ss.public_header_files = 'JoyKit/Models/**/*.h'
end

s.subspec 'CellsLibruary' do|ss|
ss.source_files = 'JoyKit/CellsLibruary/**/*.{h,m}'
ss.dependency 'JoyKit/Models'
ss.dependency 'JoyKit/Common'
ss.dependency 'JoyKit/Category'
ss.public_header_files = 'JoyKit/CellsLibruary/**/*.h'
end

s.subspec 'Controllers' do|ss|
ss.source_files = 'JoyKit/Controllers/**/*.{h,m}'
ss.dependency 'JoyKit/Common'
ss.dependency 'JoyKit/Category'
ss.public_header_files = 'JoyKit/Controllers/**/*.h'
end

s.subspec 'Utility' do|ss|
ss.source_files = 'JoyKit/Utility/**/*.{h,m}'
ss.public_header_files = 'JoyKit/Utility/**/*.h'
end


s.dependency 'Masonry'
#s.pod_target_xcconfig = { 'USER_HEADER_SEARCH_PATHS' => '${PODS_ROOT}/**'}

end
