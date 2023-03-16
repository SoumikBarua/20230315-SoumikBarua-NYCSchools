//
//  NYCOpenDataAPI.swift
//  20230315-SoumikBarua-NYCSchools
//
//  Created by SB on 3/15/23.
//

import Foundation

enum EndPoint: String {
    case DOEHighSchoolDirectory2021 = "8b6c-7uty"
    case DOEHighSchoolDirectory2020 = "23z9-6uk9"
    case DOEHighSchoolDirectory2019 = "uq7m-95z8"
    case DOEHighSchoolDirectory2018 = "vw9i-7mzq"
    case DOEHighSchoolDirectory2017 = "s3k6-pzi2"
    case DOEHighSchoolDirectory2016 = "7crd-d9xh"
}

enum ResponseType: String {
    case JSON = ".json"
    case GeoJSON = ".geojson"
    case XML = ".xml"
    case CSV = ".csv"
}

struct NYCOpenDataAPI {
    
    // This struct is responsible for knowing how to generate URLs that our NYC Open Data API expects
    // Also, how to parse the response into relevant model objects
    
    private static let baseURLString = "https://data.cityofnewyork.us/resource/"
    private static let apiKey = "" // Often accessing an API will require an API Key
    
    // Computed property
    static var schoolDirectoryURL: URL {
        return nycOpenDataURL(endPoint: .DOEHighSchoolDirectory2017, parameters: nil, responseType: .JSON)
    }
    
    private static func nycOpenDataURL(endPoint: EndPoint, parameters: [String: String]?, responseType: ResponseType) -> URL {
        let requestURLString = baseURLString + endPoint.rawValue + responseType.rawValue
        var components = URLComponents(string: requestURLString)!
        var queryItems = [URLQueryItem]()
        
        if let params = parameters {
            for (key, value) in params {
                let item = URLQueryItem(name: key, value: value)
                queryItems.append(item)
            }
        }
        components.queryItems = queryItems
        
        return components.url!
        
    }
    
    static func schools(fromJSON data: Data) -> Result<[School], Error> {
        do {
            let decoder = JSONDecoder()
            let schoolArray = try decoder.decode([School].self, from: data)
            return .success(schoolArray)
        } catch {
            return .failure(error)
        }
    }
}

