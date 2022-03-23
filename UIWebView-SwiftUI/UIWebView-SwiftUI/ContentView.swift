//
//  ContentView.swift
//  UIWebView-SwiftUI
//
//  Created by Suraj Mirajkar on 23/03/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showWebView = false
    var body: some View {
        VStack {
            let urlString = "https://objectivecwithsuraj.blogspot.com"
            //UIApplication.shared.openURL(URL(string: urlString))
            Link(destination: URL(string: urlString)!, label: {
                Text("My Blog")
                    .foregroundColor(.orange)
            })
                .padding(20)
            Divider()
            Button("Launch WebView") {
                showWebView.toggle()
            }
            .sheet(isPresented: $showWebView) {
                if let urlStr = urlString, let url = URL(string: urlStr) {
                    WebView(url: url)
                }
            }
            .padding(20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
