#
# Be sure to run `pod lib lint BDNPodTestLibrary.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BDNPodTestLibrary'    #私有库名称
  s.version          = '1.0.0'                #私有库版本号
  s.summary          = 'Just Testing.'        #简短介绍，下面的description时详细介绍

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                        Testing Private Podspec.
                       DESC

  s.homepage         = 'https://github.com/yuanbili/BDNPodTestLibrary'    #主页地址，这里要填写可以访问到的地址，不然验证会无法通过
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = 'MIT'    #开源协议
  s.author           = { 'Bili Yuan' => 'yuanbili@baidu.com' }     #作者信息
  s.source           = { :git => 'https://github.com/yuanbili/BDNPodTestLibrary.git', :tag => "1.0.0" }     #项目地址，这里不支持SSH地址，验证不通过。只支持http和https，建议使用https
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '7.0'     #支持的平台及版本
  s.requires_arc = true
 
  # s.source_files = 'BDNPodTestLibrary/Classes/**/*'    #私有库代码源文件地址，**/*表示Classes目录及其子目录下所有文件，如果有多个目录则用逗号分开
  # 
  # s.resource_bundles = {
  #   'BDNPodTestLibrary' => ['BDNPodTestLibrary/Assets/*.png']     #资源文件地址
  # }

  s.subspec 'NetworkEngine' do |networkEngine|
    networkEngine.source_files = 'BDNPodTestLibrary/Classes/NetworkEngine/**/*'
    networkEngine.public_header_files = 'BDNPodTestLibrary/Classes/NetworkEngine/**/*.h'
    networkEngine.dependency 'AFNetworking', '~> 2.6.3'
  end

  s.subspec 'DataModel' do |dataModel|
    dataModel.source_files = 'BDNPodTestLibrary/Classes/DataModel/**/*'
    dataModel.public_header_files = 'BDNPodTestLibrary/Classes/DataModel/**/*.h'
  end

  s.subspec 'CommonTools' do |commonTools|
    commonTools.source_files = 'BDNPodTestLibrary/Classes/CommonTools/**/*'
    commonTools.public_header_files = 'BDNPodTestLibrary/Classes/CommonTools/**/*.h'
    commonTools.dependency 'OpenUDID', '~> 1.0.0'
  end

  s.subspec 'UIKitAddition' do |ui|
    ui.source_files = 'BDNPodTestLibrary/Classes/UIKitAddition/**/*'
    ui.public_header_files = 'BDNPodTestLibrary/Classes/UIKitAddition/**/*.h'
    ui.resource_bundles = 'BDNPodTestLibrary/Assets/*.png'
    ui.dependency 'BDNPodTestLibrary/CommonTools'
  end



  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
