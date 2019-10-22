

Pod::Spec.new do |spec|
  spec.name         = "TFY_EasyBlueTooth"
  spec.version      = "2.0.0"
  spec.summary      = "蓝牙封装适合各种设备使用"

  spec.description  = "蓝牙封装适合各种设备使用"

  spec.homepage     = "https://github.com/13662049573/TFY_CoreBluetooth"
  
  spec.license      = "MIT"
  
  spec.author       = { "tfyzxc13662049573" => "420144542@qq.com" }
  
  spec.platform     = :ios, "10.0"

  spec.source       = { :git => "https://github.com/13662049573/TFY_CoreBluetooth.git", :tag => spec.version }

  spec.source_files  = "TFY_EasyBlueTooth/TFY_BlueHeader.h"

  spec.subspec 'ManagerTool' do |ss|
    ss.source_files = "TFY_CoreBluetooth/TFY_EasyBlueTooth/ManagerTool/**/*.{h,m}"
  end

  spec.subspec 'UtilsTool' do |ss|
    ss.source_files = "TFY_CoreBluetooth/TFY_EasyBlueTooth/UtilsTool/**/*.{h,m}"
  end

  spec.frameworks    = "Foundation","UIKit","CoreBluetooth"

  spec.xcconfig      = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include" }

  spec.requires_arc = true
  
end