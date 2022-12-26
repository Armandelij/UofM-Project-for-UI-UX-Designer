//
//  Authentication.swift
//  UofM(Medicine)
//
//  Created by Elijah Armande on 12/24/22.
//

import Foundation
import SwiftUI

class Authentication: ObservableObject {
    @Published var isValidated = false
    
    
    func updateValidation(success: Bool) {
        withAnimation {
            isValidated = success
        }
    }
}
