//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by John Michael Baldonado on 7/4/22.
//

import Foundation

extension Bundle {
    func decode(_file: String) -> [CoverImage] {
        // 1. Locate the json file
        guard let url = self.url(forResource: _file, withExtension: nil) else {
            fatalError("Failed to locate \(_file) in bundle")
        }
        // 2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(_file) from bundle")
        }
        // 3. Create a decoder
        let decoder = JSONDecoder()
        
        // 4. Create a property for the decoded data
        guard let loaded = try? decoder.decode([CoverImage].self, from: data) else {
            fatalError("Failed to decode \(_file) from bundle")
        }
        // 5. Return the ready-to-use data
        return loaded
    }
}
