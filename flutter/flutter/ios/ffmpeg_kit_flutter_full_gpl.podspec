Pod::Spec.new do |s|
  s.name             = 'ffmpeg_kit_flutter_full_gpl'
  s.version          = '6.0.3'
  s.summary          = 'FFmpeg Kit for Flutter (Custom Local Build)'
  s.description      = 'A Flutter plugin for running FFmpeg and FFprobe commands.'
  s.homepage         = 'https://github.com/FreezeIt/ffmpeg-kit'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'FreezeIt' => 'tarooshi@gmail.com' }

  s.platform         = :ios, '12.1'
  s.requires_arc     = true
  s.static_framework = true

  s.source           = { :path => '.' }

  s.source_files        = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'

  s.dependency 'Flutter'
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
  }

  # ใช้เฉพาะ subspec นี้เท่านั้น
  s.default_subspec = 'full-gpl'

  s.subspec 'full-gpl' do |ss|
    ss.source_files         = 'Classes/**/*'
    ss.public_header_files  = 'Classes/**/*.h'
    ss.vendored_frameworks = [
      'Frameworks/ffmpegkit.xcframework',
      'Frameworks/libavcodec.xcframework',
      'Frameworks/libavfilter.xcframework',
      'Frameworks/libavformat.xcframework',
      'Frameworks/libavutil.xcframework',
      'Frameworks/libswresample.xcframework',
      'Frameworks/libswscale.xcframework'
    ]
    ss.ios.deployment_target = '12.1'
  end
end