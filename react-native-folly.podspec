#
# Be sure to run `pod lib lint Folly.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'react-native-folly'
  s.version          = '0.1.4'
  s.summary          = 'iOS framework of Folly that support use_frameworks!.'

  s.description      = <<-DESC
  Folly has stoped updating until version 2016.09.26.00 on CocoaPods. We want to create a react-native vessel to integrate with the main project. But it was not supported by the old version. So this the reasion that folly-ios lib presented.
                       DESC

  s.homepage         = 'https://github.com/beatjs/react-native-folly'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Liam Xu' => 'liamxujia@outlook.com' }
  s.source           = { :git => 'https://github.com/beatjs/react-native-folly.git', :tag => s.version.to_s }
  
  s.module_name = 'folly'
  s.libraries = "stdc++"
  s.pod_target_xcconfig = {
      "USE_HEADERMAP" => "NO",
      "CLANG_CXX_LANGUAGE_STANDARD" => "c++14",
      "HEADER_SEARCH_PATHS" => "\"$(PODS_TARGET_SRCROOT)\" \"$(PODS_ROOT)/boost-for-react-native\" \"$(PODS_ROOT)/DoubleConversion\""
  }
  s.compiler_flags = '-DFOLLY_NO_CONFIG -DFOLLY_MOBILE=1 -DFOLLY_USE_LIBCPP=1 -DFOLLY_HAVE_PTHREAD=1 -Wno-comma -Wno-documentation -Wno-unguarded-availability -Wno-unreachable-code'
  
  s.source_files =
  'folly/String.cpp',
  'folly/Conv.cpp',
  'folly/Demangle.cpp',
  'folly/FileUtil.cpp',
  'folly/Format.cpp',
  'folly/lang/SafeAssert.cpp',
  'folly/ScopeGuard.cpp',
  'folly/Unicode.cpp',
  'folly/dynamic.cpp',
  'folly/json.cpp',
  'folly/json_pointer.cpp',
  'folly/container/detail/F14Table.cpp',
  'folly/detail/Demangle.cpp',
  'folly/detail/UniqueInstance.cpp',
  'folly/hash/SpookyHashV2.cpp',
  'folly/lang/Assume.cpp',
  'folly/lang/CString.cpp',
  'folly/memory/detail/MallocImpl.cpp',
  'folly/net/NetOps.cpp',
  'folly/portability/SysUio.cpp'
  
  s.preserve_paths =
  'folly/*.h',
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
  
  s.dependency 'boost-for-react-native', '1.63.0'
  s.dependency 'DoubleConversion', '1.1.5'
  s.dependency 'glog', '0.3.4'
  
  s.platforms = { :ios => "11.0" }
end
