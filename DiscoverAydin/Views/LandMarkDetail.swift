//
//  LandMarkDetail.swift
//  DiscoverAydin
//
//  Created by Oğuz  on 15.10.2023.
//

import SwiftUI

struct LandMarkDetail: View {
    
    var landMark: LandMark
    
    var body: some View {
        VStack {
            MapView(coordinate: landMark.locationCoordinate)
                .frame(height: 300)
            CircleImage(image: landMark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text(landMark.name)
                    .font(.title)
                HStack {
                    Text(landMark.park)
                        
                    Spacer()
                    Text(landMark.state)
                        
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                Divider()
                Text("\(landMark.name) hakkında")
                    .font(.title2)
                Text(landMark.description)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            .padding()
            Spacer()
        }
            .navigationTitle(landMark.name)
                .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandMarkDetail(landMark: landmarks[0])
}
