Pod::Spec.new do |s|
  s.name             = "PTAlertView"
  s.version          = "0.1.0"
  s.summary          = "A simple category that add UIAlertView handling with blocks."
  s.homepage         = "https://github.com/pablosproject/PTAlertView"
  s.license          = 'MIT'
  s.author           = { "Paolo Tagliani" => "pablosproject@gmail.com" }
  s.source           = { :git => "https://github.com/pablosproject/PTAlertView.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/PablosProject'
  s.platform     = :ios, '5.0'
  s.requires_arc = true
  s.source_files = 'Pod/Classes'
end
