//
//  File.swift
//  Horoscope
//
//  Created by antonio  on 1/13/20.
//  Copyright © 2020 antonio . All rights reserved.
//

import Foundation



class NetworkHelper {
    
    static let manager = NetworkHelper()
    
    private init(){}
    
    private let urlSession = URLSession(configuration: URLSessionConfiguration.default)
    func performDataTask(urlString: String, CompletionHandler: @escaping ((Result<Data,AppError>) -> ())) {
        
        
        guard let URL = URL(string: urlString) else {
            CompletionHandler(.failure(.BadURL))
            return
        }
        
        var request = URLRequest(url: URL)
        request.httpMethod = "GET"
        request.httpBody = nil
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        urlSession.dataTask(with: request){ (data,request,error) in
            
            guard let data = data else {
                CompletionHandler(.failure(.NetworkError))
                return
            }
            
            guard let error = error else {
                CompletionHandler(.failure(.BadStatusCode))
                return
            }
            
            CompletionHandler(.success(data))
            
        }.resume()
        
    }
    
}
