source 'https://github.com/cocoapods/specs.git'
source 'https://bitbucket.org/ttbbank/one_oneapp-designsystem-ios-private-pods.git'

platform :ios, '12.0'
install! 'cocoapods', :disable_input_output_paths => true

workspace 'OneAppUIKit.xcworkspace'

use_frameworks!
inhibit_all_warnings!

target 'OneAppUIKit' do
  pod 'IQKeyboardManagerSwift'
  pod 'Kingfisher', '6.3.1'
  pod 'lottie-ios', '3.4.4'

  pod "HyperioniOS/Core"
  pod 'HyperioniOS/AttributesInspector'
  pod 'HyperioniOS/Measurements'
  pod 'HyperioniOS/SlowAnimations'
  pod 'OneAppDesignSystem', '11.5.0'

  target 'OneAppUIKitTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'OneAppUIKitUITests' do
    # Pods for testing
  end

end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12.0'
      config.build_settings['CODE_SIGNING_ALLOWED'] = 'NO'
    end
  end
end

