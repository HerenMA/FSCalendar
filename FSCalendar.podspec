Pod::Spec.new do |s|
  s.name             = "FSCalendar"
  s.version          = "2.8.1"
  s.summary          = "A superiorly awesome iOS7+ calendar control, compatible with Objective-C and Swift."
  s.homepage         = "https://github.com/WenchaoD/FSCalendar"
  s.screenshots      = "https://cloud.githubusercontent.com/assets/5186464/10262249/4fabae40-69f2-11e5-97ab-afbacd0a3da2.jpg"
  s.license          = 'MIT'
  s.author           = { "Wenchao Ding" => "f33chobits@gmail.com" }
  s.source           = { :git => "https://github.com/HerenMA/FSCalendar.git", :tag => s.version.to_s }
  s.platform     = :ios
  s.ios.deployment_target = '8.0'
  
  s.ios.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.ios.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  s.requires_arc = true
  s.default_subspec = 'Core'

  s.subspec 'Core' do |ss|
    ss.source_files = 'FSCalendar/*.{h,m}'
  end

  s.subspec 'Framework' do |ss|
    ss.ios.vendored_framework   = 'ios/FSCalendar.framework'
  end

  s.framework    = 'UIKit', 'QuartzCore'
end
