//
//  ContentView.swift
//  ColorSchemeManager
//
//  Created by Ike Mattice on 5/18/23.
//

import SwiftUI
//
public enum UserDefaultsKey {
    case preferredColorScheme

    public var key: String {
        String(describing: self)
    }
}
//
//extension AppStorage {
////    init(_ userDefaultsKey: UserDefaultsKey, store: UserDefaults = .standard) where Value == String? {
////    init(_ userDefaultsKey: UserDefaultsKey) where Value : RawRepresentable, Value.RawValue == String {
//
//    init(_ userDefaultsKey: UserDefaultsKey) {
//        self.init("hello")
////        self.init("hello")
////        self.init("hello", store: .standard)
//    }
//}
//

struct ContentView: View {
//    @AppStorage(.preferredColorScheme) var storedColorScheme: ColorScheme?
    @AppStorage(UserDefaultsKeys.preferredColorScheme.key) var preferredColorScheme: ColorScheme?
    
    var body: some View {
        NavigationStack {
            HStack(spacing: 75) {
                Button("Automatic") {
                    preferredColorScheme = nil
                }
                Button("Light") {
                    preferredColorScheme = .light
                }
                Button("Dark") {
                    preferredColorScheme = .dark
                }
            }
            .padding()

            Spacer()
            
            Text("Hello")
                .foregroundColor(.textColor)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.appPrimary)
                        .frame(width: 100, height: 100)
                )
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.appSecondary)
                        .frame(width: 200, height: 200)
                )
            
            Spacer()
            
            NavigationLink {
                NextPage()
                    .preferredColorScheme(.light)
            } label: {
                Text("Next Page")
            }
            .padding()
        }
        .onAppear {
           let raw = preferredColorScheme?.rawValue
            
            preferredColorScheme = .light
            
            let light = preferredColorScheme
            
            if let light {
                let constructed = ColorScheme(rawValue: light.rawValue )
                print(constructed)
            }
            
            print("Complete")
        }
    }
    
}

// MARK: - Color Extension
extension Color {
    static let appPrimary: Color = Color("Primary")
    static let appSecondary: Color = Color("Secondary")
    static let textColor: Color = Color("Text")
}

// MARK: - Previews
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
