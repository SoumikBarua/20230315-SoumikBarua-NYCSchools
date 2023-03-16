//
//  SATResultsServices.swift
//  20230315-SoumikBarua-NYCSchools
//
//  Created by SB on 3/16/23.
//

import Foundation

class SATResultsServices {
    
    // This class will handle the actual web service call for retrieving the SAT results
    
    static let shared = SATResultsServices()
    
    private let session: URLSession = {
        let config = URLSessionConfiguration.default
        return URLSession(configuration: config)
    }()
    
    func fetchSATResults(schoolDBN: String) {
        let url = NYCOpenDataAPI.satResultsURL(query: ["dbn":schoolDBN])
        let request = URLRequest(url: url)
        let task = session.dataTask(with: request) {
            (data, response, error) in
            
            if let jsonData = data {
                if let jsonString = String(data: jsonData, encoding: .utf8) {
                    print(jsonString)
                }
            } else if let requestError = error {
                print("Error fetching the SAT results \(requestError)")
            } else {
                print("Unexpected error with the SAT results request")
            }
                
        }
        task.resume()
        
    }
}
