//
//  AppStorage+ColorScheme.swift
//  ColorSchemeManager
//
//  Created by Ike Mattice on 5/24/23.
//

import SwiftUI

extension AppStorage {
}

extension ColorScheme: RawRepresentable {
    public init?(rawValue: String) {
        switch rawValue {
        case "light":
            self = .light
        case "dark":
            self = .dark
        default:
            return nil
        }
    }
    
    public var rawValue: String {
        String(describing: self)
    }
}

extension Optional: RawRepresentable where Wrapped == ColorScheme {
    public init?(rawValue: String) {
        switch rawValue {
        case "light":
            self = .light
        case "dark":
            self = .dark
        default:
            return nil
        }
    }
    
    public var rawValue: String {
        String(describing: self)
    }
}
