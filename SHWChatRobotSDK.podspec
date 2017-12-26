#
# Be sure to run `pod lib lint SHWChatRobotSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'SHWChatRobotSDK'
    s.version          = '1.0.0'
    s.summary          = 'iOS聊天机器人无UI SDK'
    s.homepage         = 'https://github.com/newsdata/shuwen-chatrobot-sdk'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'yangyang' => 'yangyang@shuwen.com' }
    s.ios.deployment_target = '8.0'

    s.source           = { :git => 'git@github.com:newsdata/shuwen-chatrobot-sdk.git', :tag => s.version.to_s}
    s.vendored_framework = "SHWChatRobotSDK/Classes/SHWChatRob.framework"

    s.requires_arc = true
    s.frameworks = 'CoreLocation', 'SystemConfiguration','CoreFoundation','Security'
    # dependencys
    s.dependency 'UTDID', '~> 1.0.0'
end
