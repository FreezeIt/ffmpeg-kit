Pod::Spec.new do |s|
    s.name             = 'ffmpeg_kit_flutter_full_gpl'
    s.version          = '6.0'
    s.summary          = 'FFmpegKit for iOS with full-gpl configuration'
    s.description      = 'FFmpegKit prebuilt xcframework for iOS, full-gpl version.'
    s.homepage         = 'https://github.com/FreezeIt/ffmpeg-kit'
    s.license          = { :type => 'GPL', :file => 'LICENSE' }
    s.author           = { 'FreezeIt' => 'tarooshi@gmail.com' }
    s.source           = {
      :http => 'https://github.com/FreezeIt/ffmpeg-kit/releases/download/v6.0/ffmpeg-kit-full-gpl-6.0-ios-xcframework.zip'
    }
    s.vendored_frameworks = '*.xcframework'
    s.platform     = :ios, '12.0'
    s.swift_version = '5.0'
end