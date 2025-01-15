Pod::Spec.new do |spec|
  spec.name         = "OneAppUIKit"
  spec.version      = "0.0.1"
  spec.summary      = "OneAppUIKit, is a part of Go by One App TTB application."

  spec.homepage     = "https://github.com/flukeOddsteam/OneAppUIKit"
  spec.license      = { :type => 'MIT', :text => 'Copyright © 2021 TMB Bank Public Company Limited. All rights reserved.' }
  spec.author       = { 'fluke' => 'fluke@odds.team' }
  spec.source       = { :git => "git@github.com:flukeOddsteam/OneAppUIKit.git", :tag => "#{spec.version}" }
  spec.source_files  = "OneAppUIKit/Source/**/*.{swift,h,m}"
  spec.resources    = [
    "OneAppUIKit/Source/**/*.{strings,xcassets,storyboard,xib,json,ttf,txt}"
  ]

  spec.ios.deployment_target = "12.0"
  spec.static_framework = false
  spec.swift_version = "5.1"

  spec.subspec 'Lib' do |lib|
    lib.dependency 'PanModal'
    lib.dependency 'IQKeyboardManagerSwift'
    lib.dependency 'Kingfisher'
    lib.dependency 'lottie-ios', '3.4.4'
  end
end