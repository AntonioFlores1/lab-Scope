//
//  HoroscopeAPI.swift
//  Horoscope
//
//  Created by antonio  on 1/13/20.
//  Copyright © 2020 antonio . All rights reserved.
//

import Foundation


class HoroscopeAPI {
    func horoscopeAPI(horoscopeSign:String){
        
        let urlString = "http://sandipbgt.com/theastrologer/api/horoscope/\(horoscopeSign)/today/"
        
        NetworkHelper.manager.performDataTask(urlString: urlString) { (<#Result<Data, AppError>#>) in
            <#code#>
        }
        
    }
}
