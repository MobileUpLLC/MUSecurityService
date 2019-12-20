Pod::Spec.new do |spec|
  
  spec.name          = 'MUSecurityService'
  spec.version       = '0.0.1'
  spec.license       = { :type => 'MIT' }
  spec.homepage      = 'https://github.com/MobileUpLLC/MUSecurityService.git'
  spec.authors       = { 'Edgar Semko' => 'edgar.semko@mobileup.ru' }
  spec.summary       = 'MUSecurityService'
  spec.source        = { :git => 'https://github.com/MobileUpLLC/MUSecurityService.git', :tag => '0.0.1' }
  spec.module_name   = 'MUSecurityService'
  spec.swift_version = '4.2'

  spec.ios.deployment_target  = '9.0'

  spec.source_files       = '*.swift'
  spec.ios.source_files   = '*.swift'

  spec.framework      = 'SystemConfiguration'
  spec.ios.framework  = 'UIKit'

end