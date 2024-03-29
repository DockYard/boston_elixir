//
//  ContentView.swift
//  BostonElixir
//

import SwiftUI
import LiveViewNative
import LiveViewNativeMapKit

struct ContentView: View {
    var body: some View {
        #LiveView(.automatic(
            development: .localhost(path: "/"),
            production: .custom(URL(string: "https://example.com/")!)
        ), addons: [MapKitRegistry<_>.self])
    }
}
