//
//  Secret.swift
//  Bunjang
//
//  Created by 김민 on 2022/08/29.
//

import Foundation

struct Secret {
    static let jwt = "eyJ0eXBlIjoiand0IiwiYWxnIjoiSFMyNTYifQ.eyJ1c2VySWR4IjoxMSwiaWF0IjoxNjYxOTY1MTAwLCJleHAiOjE2NjM0MzYzMjl9.mp0NiyFFkB_JByktsyZt-wfxASCDVhBlxKxFRbMHDp0"
    //static let jwt = UserDefaults.standard.string(forKey: "jwt") as! String
    static let headerJWT = ["X-ACCESS-TOKEN": jwt]
}
