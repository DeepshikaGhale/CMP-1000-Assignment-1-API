//
//  CatFacts_Helper.swift
//  Assignment-1-API
//
//  Created by Deepshika Ghale on 2023-05-24.
//

import Foundation

class CatFacts_Helper {
    private static let urlString = "https://meowfacts.herokuapp.com/"
    
    public static func fetch() async -> Any {
        let catFactsUrl =  URL(string: urlString)!
        let (data, _) = try! await URLSession.shared.data(from: catFactsUrl)
        
        let jsonObject = try! JSONSerialization.jsonObject(with: data)
        return jsonObject
    }
}
