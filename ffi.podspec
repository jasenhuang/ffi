Pod::Spec.new do |s|
  s.name        = 'ffi'
  s.version     = '3.3'
  s.license     = 'MIT'
  s.summary     = 'A portable foreign-function interface library.'
  s.homepage    = 'http://sourceware.org/libffi/'
  s.author      = { 'Anthony Green' => 'green@moxielogic.com',
                    'Raffaele Sena' => 'aff367@gmail.com',
                    'Jon Beniston' => 'jon@beniston.com',
                    'Bo Thorsen' => 'bo@suse.de',
                    'Landon Fuller' => 'landonf@plausible.coop',
                    'Zachary Waldowski' => 'zwaldowski@gmail.com' }
  s.source      = { :git => 'https://github.com/jasenhuang/ffi.git', :tag => 'v3.3' }

  s.ios.deployment_target = '9.0'

  s.ios.public_header_files = "libffi/include/*.h"
  s.ios.source_files = "libffi/include/*.h",
                       "libffi/common/*.{c,S,h}",
                       "libffi/arm/*.{c,S,h}", 
                       "libffi/x86/*.{c,S,h}",
                       "libffi/aarch64/*.{c,S,h}"

  s.osx.deployment_target = '10.9'
  s.osx.public_header_files = "libffi/include/*.h"
  s.osx.source_files = "libffi/include/*.h",
                       "libffi/common/*.{c,S,h}",
                       "libffi/x86/*.{c,S,h}",
                       "libffi/aarch64/*.{c,S,h}"

  s.xcconfig    = { 
                    'OTHER_LDFLAGS' => "-Wl,-no_compact_unwind", 
                    'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) USE_DL_PREFIX'
                  }
end
