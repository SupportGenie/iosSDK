Pod::Spec.new do |s|  
    s.name              = 'SupportGenieSDK'
    s.version           = '0.0.3'
    s.summary           = 'sdk for adding SupportGeenie chat and live video help to your iOS app'
    s.homepage          = 'https://supportgenie.io/'

    s.author            = { 'Name' => 'tarun@supportgenie.io' }
    s.license           = { :type => 'MIT', :file => 'LICENSE' }

    s.platform          = :ios
    s.source            = { :git => 'https://github.com/SupportGenie/iosSDK.git', :tag => 'v0.0.3' }
    s.source_files      = "SupportGenieSDK.framework/Headers/*.h"
    s.ios.deployment_target = '10.0'
    s.ios.vendored_frameworks = 'SupportGenieSDK.framework'
    s.frameworks = 'UIKit', 'Security', 'CFNetwork', 'MobileCoreServices'
    s.dependency 'MDWamp', '~> 2.2.0'
end


