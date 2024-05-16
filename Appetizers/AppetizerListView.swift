//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Recep Taha Aydın on 16.05.2024.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView {
            List(MockData.appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .listStyle(.plain)
            .navigationTitle("🍟 Appetizers")
        }
    }
}

#Preview {
    AppetizerListView()
}
