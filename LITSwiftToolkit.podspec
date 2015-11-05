Pod::Spec.new do |s|
  s.name         = "LITSwiftToolkit"
  s.version      = "0.0.1"
  s.summary      = "Lightweight swift toolkit that wrap all unnecessaries under the hood"

  s.description  = <<-DESC
                   If you build applications in MVC way, you could use this toolkit easy.
                   Some helpful extensions are shiped.
                   DESC
  s.homepage     = "https://github.com/LightweightInTouch/" + s.name

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author       = { "Dmitry Lobanov" => "gaussblurinc@gmail.com" }

  s.platform     = :ios

  s.ios.deployment_target = "8.0"

  s.source       = {
    :git => "https://github.com/LightweightInTouch/" + s.name + ".git",
    :submodules => false,
    :tag => s.version.to_s
  }

  s.source_files  = "Tools/**/*.{swift}"
  s.exclude_files = "Example"
  s.frameworks = "Foundation", "UIKit"

  s.requires_arc = true  
end