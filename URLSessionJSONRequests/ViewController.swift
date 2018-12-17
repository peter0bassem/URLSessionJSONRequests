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
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else { return }
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            if let response = response {
                print(response)
            }
            if let data = data {
                print(data)
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    print(json)
                } catch (let error) {
                    print(error.localizedDescription)
                }
            }
        }.resume()
    }
    
    @IBAction func postButton_Event(_ sender: UIButton) {
        let param = ["username": "@peter", "tweet": "Hello World Tweeting"]
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        guard let httpBody = try? JSONSerialization.data(withJSONObject: param, options: []) else { return }
        request.httpBody = httpBody
        let session = URLSession.shared
        session.dataTask(with: request) { (data, response, error) in
            if let response = response {
                print(response)
            }
            if let data = data {
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    print(json)
                } catch (let error) {
                    print(error.localizedDescription)
                }
            }
        }.resume()
    }
}

