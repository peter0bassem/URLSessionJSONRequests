//
//  ViewController.swift
//  URLSessionJSONRequests
//
//  Created by Peter Bassem on 12/16/18.
//  Copyright © 2018 corpy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func getButton_Event(_ sender: UIButton) {
//        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else { return }
//        let session = URLSession.shared
//        session.dataTask(with: url) { (data, response, error) in
//            if let response = response {
//                print(response)
//            }
//            if let data = data {
//                print(data)
//                do {
//                    let json = try JSONSerialization.jsonObject(with: data, options: [])
//                    print(json)
//                } catch (let error) {
//                    print(error.localizedDescription)
//                }
//            }
//        }.resume()
        
        
        BaseURLRequest.request(requestURL: "https://high-discounts.net/api/recommendedproduct", requestMethod: HTTPMethod.get, header: nil, param: nil) { (error, data) in
            if let error = error {
                print(error.localizedDescription)
            }
            if let data = data {
                print(data)
            }
        }
        
//        BaseURLRequest.getRequest(url: "https://jsonplaceholder.typicode.com/users", method: HTTPMethod.get, header: nil, param: nil)

    }
    
    @IBAction func postButton_Event(_ sender: UIButton) {
        let param = ["email": "peterbassem@gamil.com", "password": "12345677p"]
        
//        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
//        var request = URLRequest(url: url)
//        request.httpMethod = "POST"
////        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
////        request.allHTTPHeaderFields = ["Content-Type": "application/json"]
//        guard let httpBody = try? JSONSerialization.data(withJSONObject: param, options: []) else { return }
//        request.httpBody = httpBody
//        let session = URLSession.shared
//        session.dataTask(with: request) { (data, response, error) in
//            if let response = response {
//                print(response)
//            }
//            if let data = data {
//                do {
//                    let json = try JSONSerialization.jsonObject(with: data, options: [])
//                    print(json)
//                } catch (let error) {
//                    print(error.localizedDescription)
//                }
//            }
//        }.resume()
        
        BaseURLRequest.request(requestURL: "https://high-discounts.net/public/api/login", requestMethod: HTTPMethod.post, header: nil, param: param) { (error, data) in
            if let error = error {
                print(error.localizedDescription)
            }
            if let data = data {
                print(data)
            }
        }
    }
}

