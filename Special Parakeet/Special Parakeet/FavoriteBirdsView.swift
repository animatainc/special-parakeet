//
//  FavoriteBirdsView.swift
//  Special Parakeet
//
//  Created by Asaad Jaber on 19/01/2024.
//

import Foundation
import SwiftUI
import FirebaseFirestore

struct FavoriteBirdsView: View {
    @EnvironmentObject var favoritesStore: FavoritesStore
    
    var body: some View {
        List {
            ForEach(favoritesStore.areFavorited.indices, id: \.self) { index in
                HStack {
                    Image(systemName: "bird")
                    Spacer()
                    Text(favoritesStore.areFavorited[index].bird.name)
                }
            }
        }.listStyle(.plain)
    }
}

#Preview {
    FavoriteBirdsView().environmentObject(FavoritesStore(firebaseDatabase: Firestore.firestore(), areFavorited: [
        IsFavorited(name: "Magpie", family: "", isFavorited: true, favoritesStore: FavoritesStore(firebaseDatabase: nil)),
        IsFavorited(name: "Pigeon", family: "", isFavorited: false, favoritesStore: FavoritesStore(firebaseDatabase: nil)),
        IsFavorited(name: "Chicken", family: "", isFavorited: true, favoritesStore: FavoritesStore(firebaseDatabase: nil))
    ]))
}
