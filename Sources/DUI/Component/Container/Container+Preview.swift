//
// Copyright (c) B1ND, 2023.
//

import SwiftUI

@available(macOS 11, iOS 14, *)
struct ContainerPreview: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Container("오늘의 급식") {
                    
                }
                .onTap {
                    print("Touched")
                }
                
                Container("자습실") {
                }
            }
            .padding(20)
        }
        .background(Colorset.background.ignoresSafeArea())
    }
}

@available(macOS 11, iOS 14, *)
struct ContainerPreview_Previews: PreviewProvider {
    static var previews: some View {
        ContainerPreview()
    }
}
