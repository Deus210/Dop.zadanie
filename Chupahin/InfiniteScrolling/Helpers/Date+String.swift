//
//  Date+String.swift
//  MyHabits
//
//  Created by Chupahin Arcady on 10.04.2023.
//
//
import UIKit

extension Date {

    func dateToString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        dateFormatter.doesRelativeDateFormatting = true
        dateFormatter.locale = Locale(identifier: "en")
       
        return dateFormatter.string(from: self)
    }
    
    
    func timeToString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .short
        dateFormatter.dateFormat = "HH:mm"
        return dateFormatter.string(from: self)
    }

    
    func datetimeToString() -> String {
        return dateToString() + " " + timeToString()
    }

}
