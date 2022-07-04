//
//  CoverImageView.swift
//  Africa
//
//  Created by John Michael Baldonado on 7/4/22.
//

import SwiftUI

struct CoverImageView: View {
    
    //MARK: - PROPERTIES
    let coverImages: [CoverImage] = Bundle.main.decode(_file: "covers.json")
    // MARK: - BODY
    var body: some View {
        
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                .scaledToFill()
            }//: Loop
        } //: TabView
        .tabViewStyle(PageTabViewStyle())
        
    }
}


// MARK: - PREVIEW
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
