Pod::Spec.new do |s|  
    s.name              = 'SupportGenieSDK'
    s.version           = '0.0.112'
    s.summary           = 'sdk for adding SupportGeenie chat and live video help to your iOS app'
    s.homepage          = 'https://supportgenie.io/'

    s.author            = { 'Name' => 'tarun@supportgenie.io' }
    s.license           = { :type => 'MIT', :file => 'LICENSE' }

    s.platform          = :ios
    s.source            = { :git => 'https://github.com/SupportGenie/iosSDK.git', :tag => 'v0.0.112' }
    s.source_files      = "SupportGenieSDK.framework/Headers/*.h"
    s.ios.deployment_target = '10.0'
    s.pod_target_xcconfig = { 'VALID_ARCHS' => 'arm64 armv7' }
    s.ios.vendored_frameworks = 'SupportGenieSDK.framework'
    s.frameworks = 'UIKit', 'Security', 'CFNetwork', 'MobileCoreServices'
    s.dependency 'MDWamp', '~> 2.2.0'
    s.dependency 'AWSCognito', '~> 2.11.0'
    s.dependency 'AWSS3', '~> 2.11.0'
    s.dependency 'SDWebImage', '~> 5.2.2'
    s.dependency 'AWSCognitoIdentityProvider', '~> 2.11.0'
    s.dependency 'PMKVObserver', '~> 4.0'
    s.dependency 'GoogleWebRTC', '~> 1.1.29400'
    s.dependency 'AdaptiveCards', '~> 1.2.3'
    s.dependency 'MBCircularProgressBar', '~> 0.3.5'
end


