Pod::Spec.new do |s|

s.name         = "CJLoadingDotView"
s.version      = "1.0.3"
s.summary      = "A loadingView -- CJLoadingDotView."
s.description  = <<-DESC
可以自定义数量、颜色、大小、时间、间距的“点点loading图”
a loadingView which can custom count\color\size\duration\margin
DESC
s.homepage     = "https://github.com/CJProgrammer/CJLoadingDotView"
s.license      = "MIT"
s.author             = { "CJProgrammer" => "727459774@qq.com" }

s.platform     = :ios
s.platform     = :ios, "8.0"

s.source       = { :git => "https://github.com/CJProgrammer/CJLoadingDotView.git", :tag => "#{s.version}" }

s.source_files  = "Classes", "CJLoadingDotView/Classes/**/*.{swift}"
s.exclude_files = "Classes/Exclude"

s.requires_arc = true

end
