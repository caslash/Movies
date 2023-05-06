//
//  BaseProvider.swift
//  MoviesModel
//
//  Created by Cameron Slash on 5/5/23.
//

import Foundation

public class BaseProvider {
    public let API_KEY: String = Bundle.main.infoDictionary?["TMDB_API_KEY"] as! String
    
    public func readLocalJSONFile(forName name: String) -> Data? {
        do {
            if let filePath = Bundle(for: BaseProvider.self).path(forResource: name, ofType: "json") {
                let fileUrl = URL(fileURLWithPath: filePath)
                let data = try Data(contentsOf: fileUrl)
                return data
            }
        } catch {
            print("error: \(error)")
        }
        return nil
    }
}
