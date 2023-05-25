//
//  ParallelumAPI_Helper.swift
//  Assignment-1-API
//
//  Created by Deepshika Ghale on 2023-05-24.
//

import Foundation

class ParallelumAPI_Helper {
    private static let urlString = "https://meowfacts.herokuapp.com/"
    
    public static func fetch() async -> Any {
        let parallelumUrl =  URL(string: urlString)!
        let (data, _) = try! await URLSession.shared.data(from: parallelumUrl)
        
        let jsonObject = try! JSONSerialization.jsonObject(with: data)
        return jsonObject
    }
}
