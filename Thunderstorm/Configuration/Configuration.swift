//
//  Configuration.swift
//  Thunderstorm
//
//  Created by Harry Disseldorp on 4/12/17.
//  Copyright © 2017 DisOne. All rights reserved.
//

import Foundation

struct API {
  
  static let APIKey = "950c1b5c89a4c2452fa035d0708502dc"
  static let BaseURL = URL(string: "https://api.forecast.io/forecast/")!

  static var AuthenticatedBaseURL: URL {
    return BaseURL.appendingPathComponent(APIKey)
  }

}

struct Defaults {
  
  static let Latitude: Double = 37.8267
  static let Longitude: Double = -122.423
  
}
