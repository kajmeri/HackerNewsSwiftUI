//
//  WebView.swift
//  Hacker News (SwiftUI)
//
//  Created by Krishna Ajmeri on 1/25/20.
//  Copyright © 2020 Krishna Ajmeri. All rights reserved.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
	
	let urlString: String?
	
	func makeUIView(context: Context) -> WKWebView {
		return WKWebView()
	}
	
	func updateUIView(_ uiView: WKWebView, context: Context) {
		if let safeString = urlString {
			if let url = URL(string: safeString) {
				let request = URLRequest(url: url)
				uiView.load(request)
			}
		}
	}
}
