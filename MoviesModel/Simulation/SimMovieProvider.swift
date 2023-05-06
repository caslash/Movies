//
//  SimMovieProvider.swift
//  MoviesModel
//
//  Created by Cameron Slash on 5/5/23.
//

import Foundation

public class SimMovieProvider : BaseProvider, IMovieProvider {
    public static var shared: IMovieProvider = SimMovieProvider()
    
    required public override init() { }
    
    public func getMovie() -> Movie {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YYYY-MM-dd"
        
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .formatted(dateFormatter)
        
        let jsonData = readLocalJSONFile(forName: "MovieByID") ?? Data("".utf8)
        
        var movie: Movie = .init()

        do {
            movie = try decoder.decode(Movie.self, from: jsonData)
        } catch {
            print(String(describing: error))
        }
        
        return movie
    }
    
    public func getMovie(byID id: String) -> Movie {
        return Movie()
    }
    
    public func getMovie(byName name: String) -> Movie {
        return Movie()
    }
}
