//
//  LandMarkRow.swift
//  DiscoverAydin
//
//  Created by Oğuz  on 15.10.2023.
//

import SwiftUI

struct LandMarkRow: View {
    var landmark: LandMark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50,height: 50)
            Text(landmark.name)
            
            Spacer()
        }
    }
}

#Preview {
    Group{
        LandMarkRow(landmark: landmarks[0])
        LandMarkRow(landmark: landmarks[1])
        
    }
}


