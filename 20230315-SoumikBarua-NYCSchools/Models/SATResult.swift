//
//  SATResult.swift
//  20230315-SoumikBarua-NYCSchools
//
//  Created by SB on 3/16/23.
//

import Foundation

class SATResult: Codable, Equatable {
    let districtBoroughNumber: String?
    let schoolName: String?
    let numberOfSatTestTakers: String?
    let satCriticalReadingAvgScore: String?
    let satMathAvgScore: String?
    let satWritingAvgScore: String?
    
    
    enum CodingKeys: String, CodingKey {
        case districtBoroughNumber = "dbn"
        case schoolName = "school_name"
        case numberOfSatTestTakers = "num_of_sat_test_takers"
        case satCriticalReadingAvgScore = "sat_critical_reading_avg_score"
        case satMathAvgScore = "sat_math_avg_score"
        case satWritingAvgScore = "sat_writing_avg_score"
    }
    
    static func ==(lhs: SATResult, rhs: SATResult) -> Bool {
        guard let lhsDBN = lhs.districtBoroughNumber, let rhsDBN = rhs.districtBoroughNumber else { return false }
        return lhsDBN == rhsDBN
    }
}
