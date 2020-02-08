//
//  PostData.swift
//  Hacker News (SwiftUI)
//
//  Created by Krishna Ajmeri on 1/25/20.
//  Copyright © 2020 Krishna Ajmeri. All rights reserved.
//

import Foundation

struct Results: Decodable {
	let hits: [Post]
}

struct Post: Decodable, Identifiable {
	var id: String {
		return objectID
	}
	let objectID: String
	let points: Int
	let title: String
	let url: String?
	
	
}
