//
//  WebView.swift
//  UIWebView-SwiftUI
//
//  Created by Suraj Mirajkar on 23/03/22.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    var url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}
