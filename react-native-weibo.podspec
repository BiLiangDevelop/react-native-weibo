require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/BiLiangDevelop/react-native-weibo.git" }
  s.source_files  = "ios/**/*.{h,m}"

  s.dependency 'React'
  s.vendored_libraries = "ios/libWeiboSDK/libWeiboSDK.a"
end
