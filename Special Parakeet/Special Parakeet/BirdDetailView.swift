//
//  BirdDetailView.swift
//  Special Parakeet
//
//  Created by Asaad Jaber on 27/12/2023.
//

import Foundation
import SwiftUI

struct BirdDetailView: View {
    var body: some View {
        List {
            Section(content: {
                VStack(alignment: .leading) {
                    Text("Bird Name")
                    Text("Bird Family")
                    Text("Description")
                    Text("Lorem ipsum")
                }
            }, header: {
                Image(systemName: "camera.macro")
                    .resizable()
                    .aspectRatio(1.67, contentMode: .fit)
            })
        }
        .listRowSeparator(.hidden, edges: .all)
        .listStyle(.plain)
    }
}

#Preview {
    BirdDetailView()
}
