//
//  LandMarkList.swift
//  DiscoverAydin
//
//  Created by Oğuz  on 15.10.2023.
//

import SwiftUI


struct LandMarkList: View {
    var body: some View {
        NavigationSplitView{
            List(landmarks) { landmark in
                NavigationLink{
                    LandMarkDetail(landMark: landmark)
                } label: {
                    LandMarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Aydın'ı Keşfet")
        } detail: {
            Text("Bir yer seçiniz")
        }
    }
}


#Preview {
    LandMarkList()
}
