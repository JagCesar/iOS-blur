Pod::Spec.new do |s|
  s.name         = "iOS-blur"
  s.version      = "0.0.4"
  s.summary      = "iOS 7 blur look-a-like that blurs in real time."
  s.homepage     = "https://github.com/JagCesar/iOS-blur"
  s.license      = 'WTFPL'
  s.author       = { "Cesar Pinto Castillo" => "cesar@jagcesar.se" }
  s.source       = { :git => "https://github.com/shwetsolanki/iOS-blur.git", :tag => "#{s.version}" }
  s.platform     = :ios, '7.0'
  s.source_files = 'blur/blur/AMBlur', 'blur/blur/AMBlur/**/*.{h,m}'
  s.frameworks = 'QuartzCore', 'UIKit'
  s.requires_arc = true
end
