//
//  VideoModel.swift
//  Africa
//
//  Created by John Michael Baldonado on 7/4/22.
//

import SwiftUI

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    
    var thumbnail: String {
        "video-\(id)"
    }
}

