//
//  Helper.swift
//  gb-hw5
//
//  Created by Юлия Дебелова on 20.08.2023.
//

import Foundation

class Helper {
    static func date(timestamp: Double) -> String {
        let date = NSDate(timeIntervalSince1970: timestamp)
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .medium
        dateFormatter.dateStyle = .medium
        dateFormatter.timeZone = .current
        dateFormatter.locale = Locale(identifier: "ru_RU")
        let localeDate = dateFormatter.string(from: date as Date)
        return localeDate
    }
}
