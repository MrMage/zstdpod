Pod::Spec.new do |s|
  s.name             = 'zstd'
  s.version          = '1.4.8'
  s.summary          = 'A fast lossless compression algorithm, targeting real-time compression scenarios at zlib-level and better compression ratios'

  s.description      = <<-DESC
Zstandard, or zstd as short version, is a fast lossless compression algorithm, targeting real-time compression scenarios at zlib-level and better compression ratios. It's backed by a very fast entropy stage, provided by Huff0 and FSE library.
                       DESC

  s.homepage         = 'https://github.com/MrMage/zstdpod'
  s.license          = { :type => 'BSD', :text => <<-LICENSE
BSD License

For Zstandard software

Copyright (c) 2016-present, Facebook, Inc. All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

 * Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.

 * Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

 * Neither the name Facebook nor the names of its contributors may be used to
   endorse or promote products derived from this software without specific
   prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
LICENSE
  }
  s.author           = { 'Daniel Alm' => 'zstd@danielalm.de' }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  
  archive_name = "v" + s.version.to_s
  unpacked_archive_name = "zstd-" + s.version.to_s
  s.source   = { :http => "https://github.com/facebook/zstd/archive/#{archive_name}.zip" }
  
  s.source_files = "#{unpacked_archive_name}/lib/**/*.{h,c}"
  s.public_header_files = "#{unpacked_archive_name}/lib/**/*.h"
  s.private_header_files = [
    "#{unpacked_archive_name}/lib/common/bitstream.h",
    "#{unpacked_archive_name}/lib/common/compiler.h",
    "#{unpacked_archive_name}/lib/common/cpu.h",
    "#{unpacked_archive_name}/lib/common/debug.h",
    "#{unpacked_archive_name}/lib/common/error_private.h",
    "#{unpacked_archive_name}/lib/common/fse.h",
    "#{unpacked_archive_name}/lib/common/huf.h",
    "#{unpacked_archive_name}/lib/common/mem_zstd.h",
    "#{unpacked_archive_name}/lib/common/pool_zstd.h",
    "#{unpacked_archive_name}/lib/common/threading.h",
    "#{unpacked_archive_name}/lib/common/xxhash_zstd.h",
    "#{unpacked_archive_name}/lib/common/zstd_errors.h",
    "#{unpacked_archive_name}/lib/common/zstd_internal.h",
    "#{unpacked_archive_name}/lib/compress/hist.h",
    "#{unpacked_archive_name}/lib/compress/zstd_compress_internal.h",
    "#{unpacked_archive_name}/lib/compress/zstd_compress_literals.h",
    "#{unpacked_archive_name}/lib/compress/zstd_compress_sequences.h",
    "#{unpacked_archive_name}/lib/compress/zstd_compress_superblock.h",
    "#{unpacked_archive_name}/lib/compress/zstd_cwksp.h",
    "#{unpacked_archive_name}/lib/compress/zstd_double_fast.h",
    "#{unpacked_archive_name}/lib/compress/zstd_fast.h",
    "#{unpacked_archive_name}/lib/compress/zstd_lazy.h",
    "#{unpacked_archive_name}/lib/compress/zstd_ldm.h",
    "#{unpacked_archive_name}/lib/compress/zstd_opt.h",
    "#{unpacked_archive_name}/lib/compress/zstdmt_compress.h",
    "#{unpacked_archive_name}/lib/decompress/zstd_ddict.h",
    "#{unpacked_archive_name}/lib/decompress/zstd_decompress_block.h",
    "#{unpacked_archive_name}/lib/decompress/zstd_decompress_internal.h",
    "#{unpacked_archive_name}/lib/deprecated/zbuff.h",
    "#{unpacked_archive_name}/lib/dictBuilder/cover.h",
    "#{unpacked_archive_name}/lib/dictBuilder/divsufsort.h",
    "#{unpacked_archive_name}/lib/dictBuilder/zdict.h",
    "#{unpacked_archive_name}/lib/legacy/zstd_legacy.h",
    "#{unpacked_archive_name}/lib/legacy/zstd_v01.h",
    "#{unpacked_archive_name}/lib/legacy/zstd_v02.h",
    "#{unpacked_archive_name}/lib/legacy/zstd_v03.h",
    "#{unpacked_archive_name}/lib/legacy/zstd_v04.h",
    "#{unpacked_archive_name}/lib/legacy/zstd_v05.h",
    "#{unpacked_archive_name}/lib/legacy/zstd_v06.h",
    "#{unpacked_archive_name}/lib/legacy/zstd_v07.h"
  ]
end
