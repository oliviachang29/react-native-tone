
Pod::Spec.new do |s|
  s.name         = "RNTone"
  s.version      = "1.0.0"
  s.summary      = "RNTone"
  s.description  = <<-DESC
                  RNTone
                   DESC
  s.homepage     = "https://github.com/oliviachang29/react-native-tone"
  s.license      = "MIT"
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "hello@oliviachang.me" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/oliviachang29/react-native-tone.git", :tag => "master" }
  s.source_files  = "RNTone/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  
