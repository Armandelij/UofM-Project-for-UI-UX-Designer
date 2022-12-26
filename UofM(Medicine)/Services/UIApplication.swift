//
//  UIApplication.swift
//  UofM(Medicine)
//
//  Created by Elijah Armande on 12/24/22.
//

import Foundation
import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
