//
//  HoroscopeAPI.swift
//  Horoscope
//
//  Created by antonio  on 1/13/20.
//  Copyright © 2020 antonio . All rights reserved.
//

import Foundation


class HoroscopeAPI {
    static func horoscopeAPI(horoscopeSign:String,CompletionHandler: @escaping (Result<HoroscopeToday,AppError>) -> () ) {
        
        let urlString = "http://sandipbgt.com/theastrologer/api/horoscope/\(horoscopeSign)/today/"
        
        NetworkHelper.manager.performDataTask(urlString: urlString) { (result) in
            switch result {
            case .failure(let error) :
                CompletionHandler(.failure(error))
            case .success(let HoroscopeData):
                do {
                    let data = try JSONDecoder().decode(HoroscopeToday.self, from: HoroscopeData)
                    CompletionHandler(.success(data))
                } catch {
                    CompletionHandler(.failure(.NetworkError))
                }
            }
        }
      
        
    }
}
