//
//  API_Helper.swift
//  Assignment-1-API
//
//  Created by Deepshika Ghale on 2023-05-24.
//

import Foundation

class MeowFactsAPIHelper {
    private static let urlString = "https://meowfacts.herokuapp.com/"
    
    public static func fetch() async -> Any {
        let meowFactsUrl =  URL(string: urlString)!
        let (data, _) = try! await URLSession.shared.data(from: meowFactsUrl)
        
        let jsonObject = try! JSONSerialization.jsonObject(with: data)
        return jsonObject
    }
}
