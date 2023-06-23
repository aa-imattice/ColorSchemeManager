//
//  ColorSchemeManagerApp.swift
//  ColorSchemeManager
//
//  Created by Ike Mattice on 5/18/23.
//

import SwiftUI

typealias UDKeys = UserDefaultsKeys
public enum UserDefaultsKeys: String {
    case preferredColorScheme
    case testString
    
    var key: String {
        rawValue
    }
}

@main
struct ColorSchemeManagerApp: App {
    @AppStorage(UserDefaultsKeys.preferredColorScheme.key) var preferredColorScheme: ColorScheme?

    var body: some Scene {
        WindowGroup {
            Group {
                ContentView()
                    .preferredColorScheme(preferredColorScheme)
            }
        }
    }
}
