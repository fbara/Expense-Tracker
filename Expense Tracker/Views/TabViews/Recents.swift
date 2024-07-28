//
//  Recents.swift
//  Expense Tracker
//
//  Created by Frank Bara on 7/27/24.
//

import SwiftUI

struct Recents: View {
    var body: some View {
        GeometryReader {
            /// For animation purposes
            let size = $0.size
            
            NavigationStack {
                ScrollView(.vertical) {
                    LazyVStack(spacing: 10, pinnedViews: [.sectionHeaders]) {
                        Section {
                            
                        } header: {
                            HeaderView(size)
                        }

                    }
                    .padding(15)
                }
            }
        }
    }
    
    /// Header view
    @ViewBuilder
    func HeaderView(_ size: CGSize) -> some View {
        VStack(alignment: .leading, spacing: 5, content: {
            Text("Welcome")
                .font(.title.bold())
        })
        .hSpacing(.leading)
        .background {
            Rectangle()
        }
    }
}

#Preview {
    ContentView()
}
