//
//  CircleImage.swift
//  DiscoverAydin
//
//  Created by Oğuz  on 15.10.2023.
//

import SwiftUI


struct CircleImage: View {
    var image: Image


    var body: some View {
        image
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.indigo, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}


#Preview {
    CircleImage(image: Image("kadinlardenizi"))
}
