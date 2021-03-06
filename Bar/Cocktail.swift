//
//  Cocktail.swift
//  Bar
//
//  Created by Jason McCoy on 09/02/16.
//  Copyright © 2015 Jason McCoy. All rights reserved.
//

import Foundation

struct Cocktail {

	// MARK: - Properties

	let title: String
	let subtitle: String

	var recipe: String? {
		guard let path = NSBundle.mainBundle().pathForResource(title, ofType: "txt", inDirectory: "Data") else { return nil }
		do {
			return try String(contentsOfFile: path, encoding: NSUTF8StringEncoding)
		} catch {}
		return nil
	}


	// MARK: - Initializers

	init?(dictionary: [String: String]) {
		guard let title = dictionary["title"], subtitle = dictionary["subtitle"] else { return nil }
		self.title = title
		self.subtitle = subtitle
	}
}
