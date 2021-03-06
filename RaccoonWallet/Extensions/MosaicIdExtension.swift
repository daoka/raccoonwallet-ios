//
// Created by Taizo Kusuda on 2018/09/09.
// Copyright (c) 2018 T TECH, LIMITED LIABILITY CO. All rights reserved.
//

import Foundation
import NemSwift

extension MosaicId {
    var isXem: Bool {
        return namespaceId == "nem" && name == "xem"
    }

    var description: String {
        return namespaceId + ":" + name
    }
}