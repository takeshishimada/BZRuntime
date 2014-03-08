Pod::Spec.new do |s|
  s.name         = "BZRuntime"
  s.version      = "1.0.0"
  s.summary      = "This is a library to get runtime information of NSObject."
  s.description  = <<-DESC
                   BZRuntime is to enumrate properties of a NSObject and to get property encodings and property types. 
                   DESC
  s.homepage     = "https://github.com/expensivegasprices/bzruntime"
  s.license      = 'MIT'
  s.author             = { "BONZOO LLC" => "expensivegasprices@gmail.com" }
  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.7'
  s.requires_arc = true
  s.source       = { :git => "https://github.com/BZRuntime.git", :tag => "1.0.0" }
  s.source_files  = 'BZRuntime', 'BZRuntime/BZ*.{h,m}'
end
