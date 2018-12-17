//
//  BaseURLRequest.swift
//  URLSessionJSONRequests
//
//  Created by Peter Bassem on 12/17/18.
//  Copyright © 2018 corpy. All rights reserved.
//

import Foundation

public enum HTTPMethod: String {
    case options = "OPTIONS"
    case get     = "GET"
    case head    = "HEAD"
    case post    = "POST"
    case put     = "PUT"
    case patch   = "PATCH"
    case delete  = "DELETE"
    case trace   = "TRACE"
    case connect = "CONNECT"
}

class BaseURLRequest {
    
    class func request(requestURL url: String, requestMethod method: HTTPMethod, header: [String: String]?, param: [String: Any]?, onCompletionHandler completion: @escaping (_ error: Error?, _ data: Json4Swift_Base?) -> Void) {
        guard let url = URL(string: url) else { return }
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.timeoutInterval = 120
        if let param = param {
            guard let httpBody = try? JSONSerialization.data(withJSONObject: param, options: []) else { return }
            request.httpBody = httpBody
        }
        let session = URLSession.shared
        session.dataTask(with: request) { (data, response, error) in
            if let error = error {
                completion(error, nil)
            }
            guard let data = data else { return }
            do {
                let jsonDecoder = JSONDecoder()
                let response = try jsonDecoder.decode(Json4Swift_Base.self, from: data)
                completion(nil, response)
            } catch (let error) {
                completion(error, nil)
            }
        }.resume()
    }
}
