//
//  AppError.swift
//  Horoscope
//
//  Created by antonio  on 1/13/20.
//  Copyright © 2020 antonio . All rights reserved.
//

import Foundation

enum AppError: Error{
    case NetworkError
    case BadStatusCode
    case BadURL
}
