//
//  horoscopeModel.swift
//  Horoscope
//
//  Created by antonio  on 1/13/20.
//  Copyright © 2020 antonio . All rights reserved.
//

import Foundation

struct HoroscopeToday:Decodable {
    let sunsign: String
    let credit: String
    let date: String
    let horoscope: String
    let meta: medaInfo
}

struct medaInfo:Decodable {
    let mood: String
    let keywords: String
    let intensity: String
}
