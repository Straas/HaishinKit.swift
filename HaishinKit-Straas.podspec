Pod::Spec.new do |s|

  s.name          = "HaishinKit-Straas"
  s.version       = "1.0.11"
  s.summary       = "Camera and Microphone streaming library via RTMP, HLS for iOS, macOS, tvOS."
  s.swift_version = "5.0"

  s.description  = <<-DESC
  HaishinKit. Camera and Microphone streaming library via RTMP, HLS for iOS, macOS, tvOS.
  DESC

  s.homepage     = "https://github.com/Straas/HaishinKit.swift"
  s.license      = "New BSD"
  s.author       = { "iKala" => "contact@ikala.tv" }
  s.authors      = { "iKala" => "contact@ikala.tv" }
  s.source       = { :git => "https://github.com/Straas/HaishinKit.swift.git", :tag => "#{s.version}" }

  s.ios.deployment_target = "8.0"
  s.ios.source_files = "Platforms/iOS/*.{h,swift}"

  s.osx.deployment_target = "10.11"
  s.osx.source_files = "Platforms/macOS/*.{h,swift}"

  s.tvos.deployment_target = "10.2"
  s.tvos.source_files = "Platforms/tvOS/*.{h,swift}"

  s.source_files = "Sources/**/*.swift"
  s.dependency 'Logboard', '~> 2.1.2'

  # fix GL deprecation warning
  s.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "GLES_SILENCE_DEPRECATION" }
end
