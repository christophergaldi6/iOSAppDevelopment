//  Christopher Galdi
//  ColorObjects.swift
//  BackgroundColorChanger
//
//  Created by Christopher Galdi on 11/23/20.
//

import Foundation

struct ColorManager: Codable {
    static var colorCollection: [Color] = []
}

struct Color: Codable {
    var red: Int = 255
    var green: Int = 255
    var blue: Int = 255
    var alpha: Int = 255
}
















