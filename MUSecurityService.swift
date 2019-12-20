//
//  SecurityService.swift
//  CMTSDK
//
//  Created by Ed on 09.12.2019.
//  Copyright © 2019 Ed. All rights reserved.
//

import UIKit

class SecurityService {
    
    public static var isJailbroken : Bool { return checkJailbroken() }
    
    private static func checkJailbroken() -> Bool {
        
        guard TARGET_IPHONE_SIMULATOR != 1 else { return false}
        
         if FileManager.default.fileExists(atPath: "/Applications/Cydia.app")
            
            || FileManager.default.fileExists(atPath: "/Library/MobileSubstrate/MobileSubstrate.dylib")
            
            || FileManager.default.fileExists(atPath: "/bin/bash")
            
            || FileManager.default.fileExists(atPath: "/usr/sbin/sshd")
            
            || FileManager.default.fileExists(atPath: "/etc/apt")
            
            || FileManager.default.fileExists(atPath: "/private/var/lib/apt/")
            
            || UIApplication.shared.canOpenURL(URL(string:"cydia://package/com.example.package")!) {

            return true
       }
        
        return false
    }
    
}
