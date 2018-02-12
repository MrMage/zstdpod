Pod::Spec.new do |s|
  s.name             = 'zstd'
  s.version          = '1.3.3'
  s.summary          = 'A fast lossless compression algorithm, targeting real-time compression scenarios at zlib-level and better compression ratios'

  s.description      = <<-DESC
Zstandard, or zstd as short version, is a fast lossless compression algorithm, targeting real-time compression scenarios at zlib-level and better compression ratios. It's backed by a very fast entropy stage, provided by Huff0 and FSE library.
                       DESC

  s.homepage         = 'https://github.com/MrMage/zstdpod'
  s.license          = { :type => 'BSD', :file => 'LICENSE' }
  s.author           = { 'Daniel Alm' => 'zstd@danielalm.de' }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  
  archive_name = "v" + s.version.to_s
  unpacked_archive_name = "zstd-" + s.version.to_s
  s.source   = { :http => "https://github.com/facebook/zstd/archive/#{archive_name}.zip" }
  
  s.source_files = "#{unpacked_archive_name}/lib/**/*.{h,c}"
  s.public_header_files = "#{unpacked_archive_name}/lib/**/*.h"
end
