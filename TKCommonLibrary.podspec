Pod::Spec.new do |s|

s.platform = :ios
s.ios.deployment_target = '8.0'
s.name = "TKCommonLibrary"
s.summary = "TKCommonLibrary is framework with usable extensions written in Swift."
s.requires_arc = true

s.version = "0.1.0"

s.license = { :type => "MIT", :file => "LICENSE" }

s.author = { "Kryg Tomasz" => "kryguu@gmail.com" }

s.homepage = "https://github.com/KrygTomasz/TKCommonLibrary"

s.source = { :git => "https://github.com/KrygTomasz/TKCommonLibrary.git", :tag => "#{s.version}"}

s.framework = "UIKit"

s.source_files = "TKCommonLibrary/**/*.{swift}"

s.resources = "TKCommonLibrary/**/*.{png,jpeg,jpg,storyboard,xib}"

end
