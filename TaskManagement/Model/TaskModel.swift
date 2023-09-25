//
//  TaskModel.swift
//  TaskManagement
//
//  Created by Maliks on 24/09/2023.
//

import SwiftUI
import SwiftData

@Model
class Task: Identifiable {
    var id: UUID
    var taskTitles: String
    var creationDate: Date
    var isCompleted: Bool
    var tint: String
    
    init(id: UUID = .init(), taskTitles: String, creationDate: Date = .init(), isCompleted: Bool = false, tint: String) {
        self.id = id
        self.taskTitles = taskTitles
        self.creationDate = creationDate
        self.isCompleted = isCompleted
        self.tint = tint
    }
    
    var tintColor: Color {
        switch tint {
        case "TaskColor1" : return .taskColor1
        case "TaskColor2" : return .taskColor2
        case "TaskColor3" : return .taskColor3
        case "TaskColor4" : return .taskColor4
        case "TaskColor5" : return .taskColor5
        default: return .black
        }
    }
}

//var sampleTasks: [Task] = [
//    .init(taskTitles: "Record Video", creationDate: .updateHour(-5), isCompleted: true, tint: .taskColor1),
//    .init(taskTitles: "Redesign Website", creationDate: .updateHour(-3), tint: .taskColor2),
//    .init(taskTitles: "Go for a Walk", creationDate: .updateHour(-4), tint: .taskColor3),
//    .init(taskTitles: "Edit Video", creationDate: .updateHour(0), isCompleted: true, tint: .taskColor4),
//    .init(taskTitles: "Publish Video", creationDate: .updateHour(2), isCompleted: true, tint: .taskColor1),
//    .init(taskTitles: "Tweet about new Video", creationDate: .updateHour(1), tint: .taskColor5),
//]

extension Date {
    static func updateHour(_ value: Int) -> Date {
        let calendar = Calendar.current
        return calendar.date(byAdding: .hour, value: value, to: .init()) ?? .init()
    }
}
