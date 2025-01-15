Pod::Spec.new do |s|
  s.name         = 'OneAppUIKit'
  s.version      = '1.0.0'
  s.summary      = 'OneAppUIKit, is a part of Go by One App TTB application.'
  s.homepage     = 'https://github.com/flukeOddsteam/OneAppUIKit'
  s.license      = { :type => 'MIT', :text => 'Copyright © 2021 TMB Bank Public Company Limited. All rights reserved.' }
  s.author       = { 'fluke' => 'fluke@odds.team' }
  s.source       = { :git => 'git@github.com:flukeOddsteam/OneAppUIKit.git', :tag => '#{spec.version}' }
  
  s.ios.deployment_target = '12.0'
  s.frameworks   = 'UIKit'
  s.requires_arc = true
  s.source_files    = 'OneAppUIKit/Source/**/*.{swift,h,m}'
  s.resources    = [
    'OneAppUIKit/Source/**/*.{strings,xcassets,storyboard,xib,json,ttf,txt}'
  ]

  s.subspec 'Lib' do |lib|
    lib.dependency 'PanModal'
    lib.dependency 'IQKeyboardManagerSwift'
    lib.dependency 'Kingfisher'
    lib.dependency 'lottie-ios', '3.4.4'
  end
end