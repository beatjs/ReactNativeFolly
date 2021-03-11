#
# Be sure to run `pod lib lint Folly.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'react-native-folly'
  s.version          = '0.1.0'
  s.summary          = 'iOS framework of Folly that support use_frameworks!.'

  s.description      = <<-DESC
  Folly has stoped updating until version 2016.09.26.00 on CocoaPods. We want to create a react-native vessel to integrate with the main project. But it was not supported by the old version. So this the reasion that folly-ios lib presented.
                       DESC

  s.homepage         = 'https://github.com/beatjs/react-native-folly'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Liam Xu' => 'liamxujia@outlook.com' }
  s.source           = { :git => 'https://github.com/beatjs/react-native-folly.git', :tag => s.version.to_s }
  
  s.module_name = 'folly'
  s.ios.deployment_target = '11.0'
  s.pod_target_xcconfig = { "USE_HEADERMAP" => "NO",
                               "CLANG_CXX_LANGUAGE_STANDARD" => "c++14",
                               "HEADER_SEARCH_PATHS" => "\"$(PODS_TARGET_SRCROOT)\" \"$(PODS_ROOT)/boost-for-react-native\" \"$(PODS_ROOT)/DoubleConversion\"" }
  s.compiler_flags = '-DFOLLY_NO_CONFIG -DFOLLY_MOBILE=1 -DFOLLY_USE_LIBCPP=1 -DFOLLY_HAVE_PTHREAD=1 -Wno-comma -Wno-documentation -Wno-unguarded-availability -Wno-unreachable-code'
                        
  
  s.source_files = 'folly/**/*.{cpp}'
  s.preserve_paths = 'folly/*.h',
                     'folly/container/*.h',
                     'folly/container/detail/*.h',
                     'folly/detail/*.h',
                     'folly/functional/*.h',
                     'folly/hash/*.h',
                     'folly/lang/*.h',
                     'folly/memory/*.h',
                     'folly/memory/detail/*.h',
                     'folly/net/*.h',
                     'folly/net/detail/*.h',
                     'folly/portability/*.h'
  
  s.dependency 'boost-for-react-native'
  s.dependency 'DoubleConversion'
  s.dependency 'glog'
  
  s.platforms = { :ios => "11.0"}
end
