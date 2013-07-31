Pod::Spec.new do |s|
  s.name         = "iOS-blur"
  s.version      = "0.0.1"
  s.summary      = "Blur backgrounds using UIViews"
  s.homepage     = "https://github.com/JagCesar/iOS-blur"
  s.license      = 'Custom'
  s.author       = { "César Pinto Castillo" => "cesar@blocket.se" }
  s.source       = { :git => "https://github.com/JagCesar/iOS-blur.git", :commit => "4e223ab6dfc108fa210c6ec5d19373fa24d57de3" }
  s.platform     = :ios, '7.0'
  s.source_files = 'blur/blur/ARBlurView.*'
  s.frameworks = 'CoreImage', 'CoreGraphics'
  s.requires_arc = true
end
