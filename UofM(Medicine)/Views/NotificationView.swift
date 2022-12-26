//
//  NotificationView.swift
//  UofM(Medicine)
//
//  Created by Elijah Armande on 12/24/22.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        Image("bell")
            .resizable()
            .scaledToFit()
            .frame(width: 400, height: 400)
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
