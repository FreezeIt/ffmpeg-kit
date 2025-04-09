Pod::Spec.new do |s|
  s.name             = 'ffmpeg_kit_flutter_full_gpl_custom'
  s.version          = '6.0.3'
  s.summary          = 'FFmpeg Kit for Flutter (Custom Local Build)'
  s.description      = 'A Flutter plugin for running FFmpeg and FFprobe commands.'
  s.homepage         = 'https://github.com/FreezeIt/ffmpeg-kit'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'FreezeIt' => 'tarooshi@gmail.com' }

  s.platform         = :ios, '12.1'
  s.requires_arc     = true
  s.static_framework = true

  s.source = {
    :http => 'https://github.com/FreezeIt/ffmpeg-kit/releases/download/v6.0/ffmpeg-kit-full-gpl-6.0-ios-xcframework.zip'
  }

  #s.source_files        = 'Classes/**/*'
  #s.public_header_files = 'Classes/**/*.h'
  #s.header_mappings_dir = 'Classes'

  s.vendored_frameworks = 'ffmpeg-kit-full-gpl-6.0-ios-xcframework/ffmpegkit.xcframework'
  s.public_header_files = 'ffmpeg-kit-full-gpl-6.0-ios-xcframework/ffmpegkit.xcframework/**/*.h'
  s.header_mappings_dir = 'ffmpeg-kit-full-gpl-6.0-ios-xcframework/ffmpegkit.xcframework'

  s.dependency 'Flutter'
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
    'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/ffmpeg_kit_flutter_full_gpl_custom/ffmpeg-kit-full-gpl-6.0-ios-xcframework/ffmpegkit.xcframework/ios-arm64_arm64e/ffmpegkit.framework/Headers"'
  }

  # ใช้เฉพาะ subspec นี้เท่านั้น
  s.default_subspec = 'full-gpl'

  s.subspec 'full-gpl' do |ss|
    ss.source_files         = 'Classes/**/*'
    ss.public_header_files  = 'Classes/**/*.h'
    ss.vendored_frameworks = [
      'ffmpegkit.xcframework',
      'libavcodec.xcframework',
      'libavfilter.xcframework',
      'libavformat.xcframework',
      'libavutil.xcframework',
      'libswresample.xcframework',
      'libswscale.xcframework',
      'libavdevice.xcframework'
    ]
    ss.header_mappings_dir = '.'
    ss.preserve_paths = '*.xcframework'
    ss.ios.deployment_target = '12.1'
  end
end