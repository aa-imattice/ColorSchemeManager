//
//  NextPage.swift
//  ColorSchemeManager
//
//  Created by Ike Mattice on 5/22/23.
//

import SwiftUI

struct NextPage: View {
    var body: some View {
        VStack {
            Text("Page 2")
                .padding()
                .foregroundColor(.textColor)
                .background(Color.appSecondary)
            
            UIKitView()
                .padding()
                .foregroundColor(.textColor)
                .background(Color.appPrimary)
        }
    }
}

struct NextPage_Previews: PreviewProvider {
    static var previews: some View {
        NextPage()
    }
}
