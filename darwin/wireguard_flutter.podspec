#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint wireguard_2govpn.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name = "wireguard_2govpn"
  s.version = "0.0.1"
  s.summary = "Wireguard (darwin)"
  s.description = <<-DESC
Wireguard flutter SDK for iOS/macOS
                       DESC
  s.homepage = "https://2govpn.com"
  s.license = { :file => "../LICENSE" }
  s.author = { "2govpn.com" => "support@2govpn.com" }

  s.source = { :path => "." }
  s.source_files = "Classes/**/*"

#   s.platform = :ios, "15.0"

  s.pod_target_xcconfig = { "DEFINES_MODULE" => "YES", "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "i386" }
  s.swift_version = "5.7"

  s.ios.dependency "Flutter"
  s.osx.dependency "FlutterMacOS"
  s.ios.deployment_target = "15.0"
  s.osx.deployment_target = "12.0"

end
