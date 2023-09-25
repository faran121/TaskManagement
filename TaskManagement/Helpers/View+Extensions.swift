//
//  View+Extension.swift
//  TaskManagement
//
//  Created by Maliks on 24/09/2023.
//

import SwiftUI

extension View {
    @ViewBuilder
    func hSpacing(_ alignment: Alignment) -> some View {
        self
            .frame(maxWidth: .infinity, alignment: alignment)
    }
    
    @ViewBuilder
    func vSpacing(_ alignment: Alignment) -> some View {
        self
            .frame(maxHeight: .infinity, alignment: alignment)
    }
    
    func isSameDate(_ firstDate: Date, _ secondDate: Date) -> Bool {
        return Calendar.current.isDate(firstDate, inSameDayAs: secondDate)
    }
}
