//
// Copyright (c) B1ND, 2023.
//

import SwiftUI

extension Container {
    
    /**
        터치했을 때 원하는 작업을 실행시킬 수 있습니다.

            .onTap {
                print("Hello, world!")
            }
     */
    public func onTap(action: @escaping () -> Void) -> Container {
        Container(self.title, action: action) {
            self.content
        }
    }
}
