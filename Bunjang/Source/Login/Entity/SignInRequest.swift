//
//  SignInRequest.swift
//  Bunjang
//
//  Created by 김민 on 2022/08/24.
//

import Foundation

struct SignInRequest: Encodable {
    var name: String
    var birthNumber: String
    var phoneNumber: String
    var isChecked: Bool
}
