//
//  Movie.swift
//  MoviesModel
//
//  Created by Cameron Slash on 4/30/23.
//

import Foundation

public class Movie: ObservableObject, Codable {
    public var id: Int32
    public var imdb_id: String?
    public var title: String
    public var tagline: String?
    public var poster_path: String?
    public var backdrop_path: String?
    public var release_date: Date?
    
    init() {
        id = Int32()
        imdb_id = String()
        title = String()
        tagline = String()
        poster_path = String()
        backdrop_path = String()
        release_date = Date()
    }
}
