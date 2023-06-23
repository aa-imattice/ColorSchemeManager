//
//  UIKitView.swift
//  ColorSchemeManager
//
//  Created by Ike Mattice on 5/22/23.
//

import SwiftUI

struct UIKitView: UIViewRepresentable {
    func makeUIView(context: Context) -> UILabel {
        let label = UILabel()
        label.text = "I love UIKit"
        return label
    }

    func updateUIView(_ uiView: UILabel, context: Context) {
    }
}


extension UserDefaults {
    /// A convieneince method that wraps ``UserDefaults.standard.value(forKey:)`` method to allow direct injection of a ``UserDefaultsKey``
    /// - Parameter userDefaultsKey: The key to access the value from
    /// - Returns: The value for the associated key, if any
    public func value(forKey userDefaultsKey: UserDefaultsKey) -> Any? {
        UserDefaults.standard.value(forKey: userDefaultsKey.key)
    }
    
    /// A convieneince method that wraps ``UserDefaults.standard.removeObject(forKey:)`` method to allow direct injection of a ``UserDefaultsKey``
    /// - Parameter userDefaultsKey: The key to remove the value from
    public func removeObject(forKey userDefaultsKey: UserDefaultsKey) {
        UserDefaults.standard.removeObject(forKey: userDefaultsKey.key)
    }
}

