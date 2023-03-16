//
//  SchoolDirectoryServices.swift
//  20230315-SoumikBarua-NYCSchools
//
//  Created by SB on 3/15/23.
//

import Foundation

class SchoolDirectoryServices {
    
    // This class will handle the actual web service call for retrieving the school directory
    
    private let session: URLSession = {
        let config = URLSessionConfiguration.default
        return URLSession(configuration: config)
    }()
    
    func fetchSchoolDirectory() {
        let url = NYCOpenDataAPI.schoolDirectoryURL
        let request = URLRequest(url: url)
        let task = session.dataTask(with: request) {
            (data, response, error) in
            
            if let jsonData = data {
                if let jsonString = String(data: jsonData, encoding: .utf8) {
                    print(jsonString)
                }
                let _ = self.processSchoolDirectoryResponse(data: data, error: error)
            } else if let requestError = error {
                print("Error fetching school directory: \(requestError)")
            } else {
                print("Unexpected error with request")
            }
        }
        
        task.resume()
        
    }
    
    private func processSchoolDirectoryResponse(data: Data?, error: Error?) -> Result<[School], Error> {
        guard let jsonData = data else { return .failure(error!) }
        
        return NYCOpenDataAPI.schools(fromJSON: jsonData)
    }
}
