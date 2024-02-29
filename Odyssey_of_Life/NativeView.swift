//
//  NativeView.swift
//  life
//
//  Created by Roshan Ekka on 29/02/24.
//

import SwiftUI

struct NativeView: View {
    var body: some View {
        NavigationView {
            SideBar()
            Content()
        }
    }
}

#Preview {
    NativeView()
}

struct SideBar: View {
    var body: some View {
        Text("SideBar")
    }
}

struct Content: View {
    var body: some View {
        Text("Content")
    }
}
