

Pod::Spec.new do |spec|

  spec.name         = "SRParagraphWriter"
  spec.version      = "0.0.1"
  spec.summary      = "SRParagraphWriter is a library for set custom paragraph."

  spec.description  = "Using SRParagraphWriter you can customize your paragraph by adding custom fonts, colors, and font sizes. "

  spec.homepage     = "http://EXAMPLE/SRParagraphWriter"
 
  spec.license      = "MIT"
 
  spec.author             = { "Sahan Ravindu" => "sahanrv@outlook.com" }

  spec.platform     = :ios, "9.0"

  spec.source       = { :git => "https://github.com/Sahanrv/SRParagraphWriter.git", :tag => "0.0.1" }


  spec.source_files  = "SRParagraphWriter/Source/*.{swift}", "SRParagraphWriter/*.{h,m}"
  spec.exclude_files = "Classes/Exclude"

  spec.framework  = "UIKit"
 
  
end
