//
//  School.swift
//  20230315-SoumikBarua-NYCSchools
//
//  Created by SB on 3/15/23.
//

import Foundation

class School: Codable, Equatable {
    let districtBoroughNumber: String? // District Borough Number - combination of the District Number, the letter code of the borough, & the number of the school
    let schoolName: String?
    let boro: String?
    let overviewParagraph: String?
    let school10thSeats: String?
    let academicOpportunities1: String?
    let academicOpportunities2: String?
    let academicOpportunities3: String?
    let academicOpportunities4: String?
    let academicOpportunities5: String?
    let englishLanguageLearnersPrograms: String?
    let languageClasses: String?
    let advancedPlacementCourses: String?
    let diplomaEndorsements: String?
    let neighborhood: String?
    let sharedSpace: String?
    let campusName: String?
    let buildingCode: String?
    let location: String?
    let phoneNumber: String?
    let faxNumber: String?
    let schoolEmail: String?
    let website: String?
    let subway: String?
    let bus: String?
    let grades2018: String?
    let finalGrades: String?
    let totalStudents: String?
    let startTime: String?
    let endTime: String?
    let additionalInfo1: String?
    let extracurricularActivities: String?
    let psalSportsBoys: String?
    let psalSportsGirls: String?
    let psalSportsCoed: String?
    let schoolSports: String?
    let graduationRate: String?
    let attendanceRate: String?
    let pctStuEnoughVariety: String?
    let collegeCareerRate: String?
    let pctStuSafe: String?
    let girls: String?
    let boys: String?
    let pbat: String?
    let international: String?
    let specialized: String?
    let transfer: String?
    let ptech: String?
    let earlyCollege: String?
    let geoEligibility: String?
    let schoolAccessibilityDescription: String?
    let programDescription1: String?
    let programDescription2: String?
    let programDescription3: String?
    let programDescription4: String?
    let programDescription5: String?
    let programDescription6: String?
    let programDescription7: String?
    let programDescription8: String?
    let programDescription9: String?
    let programDescription10: String?
    let directions1: String?
    let directions2: String?
    let directions3: String?
    let directions4: String?
    let directions5: String?
    let directions6: String?
    let directions7: String?
    let directions8: String?
    let directions9: String?
    let directions10: String?
    let requirement1_1: String?
    let requirement1_2: String?
    let requirement1_3: String?
    let requirement1_4: String?
    let requirement1_5: String?
    let requirement1_6: String?
    let requirement1_7: String?
    let requirement1_8: String?
    let requirement1_9: String?
    let requirement1_10: String?
    let requirement2_1: String?
    let requirement2_2: String?
    let requirement2_3: String?
    let requirement2_4: String?
    let requirement2_5: String?
    let requirement2_6: String?
    let requirement2_7: String?
    let requirement2_8: String?
    let requirement2_9: String?
    let requirement2_10: String?
    let requirement3_1: String?
    let requirement3_2: String?
    let requirement3_3: String?
    let requirement3_4: String?
    let requirement3_5: String?
    let requirement3_6: String?
    let requirement3_7: String?
    let requirement3_8: String?
    let requirement3_9: String?
    let requirement3_10: String?
    let requirement4_1: String?
    let requirement4_2: String?
    let requirement4_3: String?
    let requirement4_4: String?
    let requirement4_5: String?
    let requirement4_6: String?
    let requirement4_7: String?
    let requirement4_8: String?
    let requirement4_9: String?
    let requirement4_10: String?
    let requirement5_1: String?
    let requirement5_2: String?
    let requirement5_3: String?
    let requirement5_4: String?
    let requirement5_5: String?
    let requirement5_6: String?
    let requirement5_7: String?
    let requirement5_8: String?
    let requirement5_9: String?
    let requirement5_10: String?
    let requirement6_1: String?
    let requirement6_2: String?
    let requirement6_3: String?
    let requirement6_4: String?
    let requirement6_5: String?
    let requirement6_6: String?
    let requirement6_7: String?
    let requirement6_8: String?
    let requirement6_9: String?
    let requirement6_10: String?
    let requirement7_1: String?
    let requirement7_2: String?
    let requirement7_3: String?
    let requirement7_4: String?
    let requirement7_5: String?
    let requirement7_6: String?
    let requirement7_7: String?
    let requirement7_8: String?
    let requirement7_9: String?
    let requirement7_10: String?
    let requirement8_1: String?
    let requirement8_2: String?
    let requirement8_3: String?
    let requirement8_4: String?
    let requirement8_5: String?
    let requirement8_6: String?
    let requirement8_7: String?
    let requirement8_8: String?
    let requirement8_9: String?
    let requirement8_10: String?
    let requirement9_1: String?
    let requirement9_2: String?
    let requirement9_3: String?
    let requirement9_4: String?
    let requirement9_5: String?
    let requirement9_6: String?
    let requirement9_7: String?
    let requirement9_8: String?
    let requirement9_9: String?
    let requirement9_10: String?
    let requirement10_1: String?
    let requirement10_2: String?
    let requirement10_3: String?
    let requirement10_4: String?
    let requirement10_5: String?
    let requirement10_6: String?
    let requirement10_7: String?
    let requirement10_8: String?
    let requirement10_9: String?
    let requirement10_10: String?
    let requirement11_1: String?
    let requirement11_2: String?
    let requirement11_3: String?
    let requirement11_4: String?
    let requirement11_5: String?
    let requirement11_6: String?
    let requirement11_7: String?
    let requirement11_8: String?
    let requirement11_9: String?
    let requirement11_10: String?
    let requirement12_1: String?
    let requirement12_2: String?
    let requirement12_3: String?
    let requirement12_4: String?
    let requirement12_5: String?
    let requirement12_6: String?
    let requirement12_7: String?
    let requirement12_8: String?
    let requirement12_9: String?
    let requirement12_10: String?
    let offerRate1: String?
    let offerRate2: String?
    let offerRate3: String?
    let offerRate4: String?
    let offerRate5: String?
    let offerRate6: String?
    let offerRate7: String?
    let offerRate8: String?
    let offerRate9: String?
    let offerRate10: String?
    let program1: String?
    let program2: String?
    let program3: String?
    let program4: String?
    let program5: String?
    let program6: String?
    let program7: String?
    let program8: String?
    let program9: String?
    let program10: String?
    let code1: String?
    let code2: String?
    let code3: String?
    let code4: String?
    let code5: String?
    let code6: String?
    let code7: String?
    let code8: String?
    let code9: String?
    let code10: String?
    let interest1: String?
    let interest2: String?
    let interest3: String?
    let interest4: String?
    let interest5: String?
    let interest6: String?
    let interest7: String?
    let interest8: String?
    let interest9: String?
    let interest10: String?
    let method1: String?
    let method2: String?
    let method3: String?
    let method4: String?
    let method5: String?
    let method6: String?
    let method7: String?
    let method8: String?
    let method9: String?
    let method10: String?
    let seats9ge1: String?
    let seats9ge2: String?
    let seats9ge3: String?
    let seats9ge4: String?
    let seats9ge5: String?
    let seats9ge6: String?
    let seats9ge7: String?
    let seats9ge8: String?
    let seats9ge9: String?
    let seats9ge10: String?
    let grade9gefilledflag1: String?
    let grade9gefilledflag2: String?
    let grade9gefilledflag3: String?
    let grade9gefilledflag4: String?
    let grade9gefilledflag5: String?
    let grade9gefilledflag6: String?
    let grade9gefilledflag7: String?
    let grade9gefilledflag8: String?
    let grade9gefilledflag9: String?
    let grade9gefilledflag10: String?
    let grade9geapplicants1: String?
    let grade9geapplicants2: String?
    let grade9geapplicants3: String?
    let grade9geapplicants4: String?
    let grade9geapplicants5: String?
    let grade9geapplicants6: String?
    let grade9geapplicants7: String?
    let grade9geapplicants8: String?
    let grade9geapplicants9: String?
    let grade9geapplicants10: String?
    let seats9swd1: String?
    let seats9swd2: String?
    let seats9swd3: String?
    let seats9swd4: String?
    let seats9swd5: String?
    let seats9swd6: String?
    let seats9swd7: String?
    let seats9swd8: String?
    let seats9swd9: String?
    let seats9swd10: String?
    let grade9swdfilledflag1: String?
    let grade9swdfilledflag2: String?
    let grade9swdfilledflag3: String?
    let grade9swdfilledflag4: String?
    let grade9swdfilledflag5: String?
    let grade9swdfilledflag6: String?
    let grade9swdfilledflag7: String?
    let grade9swdfilledflag8: String?
    let grade9swdfilledflag9: String?
    let grade9swdfilledflag10: String?
    let grade9swdapplicants1: String?
    let grade9swdapplicants2: String?
    let grade9swdapplicants3: String?
    let grade9swdapplicants4: String?
    let grade9swdapplicants5: String?
    let grade9swdapplicants6: String?
    let grade9swdapplicants7: String?
    let grade9swdapplicants8: String?
    let grade9swdapplicants9: String?
    let grade9swdapplicants10: String?
    let seats1specialized: String?
    let seats2specialized: String?
    let seats3specialized: String?
    let seats4specialized: String?
    let seats5specialized: String?
    let seats6specialized: String?
    let applicants1specialized: String?
    let applicants2specialized: String?
    let applicants3specialized: String?
    let applicants4specialized: String?
    let applicants5specialized: String?
    let applicants6specialized: String?
    let appperseat1specialized: String?
    let appperseat2specialized: String?
    let appperseat3specialized: String?
    let appperseat4specialized: String?
    let appperseat5specialized: String?
    let appperseat6specialized: String?
    let seats101: String?
    let seats102: String?
    let seats103: String?
    let seats104: String?
    let seats105: String?
    let seats106: String?
    let seats107: String?
    let seats108: String?
    let seats109: String?
    let seats1010: String?
    let admissionspriority11: String?
    let admissionspriority12: String?
    let admissionspriority13: String?
    let admissionspriority14: String?
    let admissionspriority15: String?
    let admissionspriority16: String?
    let admissionspriority17: String?
    let admissionspriority18: String?
    let admissionspriority19: String?
    let admissionspriority110: String?
    let admissionspriority21: String?
    let admissionspriority22: String?
    let admissionspriority23: String?
    let admissionspriority24: String?
    let admissionspriority25: String?
    let admissionspriority26: String?
    let admissionspriority27: String?
    let admissionspriority28: String?
    let admissionspriority29: String?
    let admissionspriority210: String?
    let admissionspriority31: String?
    let admissionspriority32: String?
    let admissionspriority33: String?
    let admissionspriority34: String?
    let admissionspriority35: String?
    let admissionspriority36: String?
    let admissionspriority37: String?
    let admissionspriority38: String?
    let admissionspriority39: String?
    let admissionspriority310: String?
    let admissionspriority41: String?
    let admissionspriority42: String?
    let admissionspriority43: String?
    let admissionspriority44: String?
    let admissionspriority45: String?
    let admissionspriority46: String?
    let admissionspriority47: String?
    let admissionspriority48: String?
    let admissionspriority49: String?
    let admissionspriority410: String?
    let admissionspriority51: String?
    let admissionspriority52: String?
    let admissionspriority53: String?
    let admissionspriority54: String?
    let admissionspriority55: String?
    let admissionspriority56: String?
    let admissionspriority57: String?
    let admissionspriority58: String?
    let admissionspriority59: String?
    let admissionspriority510: String?
    let admissionspriority61: String?
    let admissionspriority62: String?
    let admissionspriority63: String?
    let admissionspriority64: String?
    let admissionspriority65: String?
    let admissionspriority66: String?
    let admissionspriority67: String?
    let admissionspriority68: String?
    let admissionspriority69: String?
    let admissionspriority610: String?
    let admissionspriority71: String?
    let admissionspriority72: String?
    let admissionspriority73: String?
    let admissionspriority74: String?
    let admissionspriority75: String?
    let admissionspriority76: String?
    let admissionspriority77: String?
    let admissionspriority78: String?
    let admissionspriority79: String?
    let admissionspriority710: String?
    let eligibility1: String?
    let eligibility2: String?
    let eligibility3: String?
    let eligibility4: String?
    let eligibility5: String?
    let eligibility6: String?
    let eligibility7: String?
    let eligibility8: String?
    let eligibility9: String?
    let eligibility10: String?
    let auditioninformation1: String?
    let auditioninformation2: String?
    let auditioninformation3: String?
    let auditioninformation4: String?
    let auditioninformation5: String?
    let auditioninformation6: String?
    let auditioninformation7: String?
    let auditioninformation8: String?
    let auditioninformation9: String?
    let auditioninformation10: String?
    let common_audition1: String?
    let common_audition2: String?
    let common_audition3: String?
    let common_audition4: String?
    let common_audition5: String?
    let common_audition6: String?
    let common_audition7: String?
    let common_audition8: String?
    let common_audition9: String?
    let common_audition10: String?
    let grade9geapplicantsperseat1: String?
    let grade9geapplicantsperseat2: String?
    let grade9geapplicantsperseat3: String?
    let grade9geapplicantsperseat4: String?
    let grade9geapplicantsperseat5: String?
    let grade9geapplicantsperseat6: String?
    let grade9geapplicantsperseat7: String?
    let grade9geapplicantsperseat8: String?
    let grade9geapplicantsperseat9: String?
    let grade9geapplicantsperseat10: String?
    let grade9swdapplicantsperseat1: String?
    let grade9swdapplicantsperseat2: String?
    let grade9swdapplicantsperseat3: String?
    let grade9swdapplicantsperseat4: String?
    let grade9swdapplicantsperseat5: String?
    let grade9swdapplicantsperseat6: String?
    let grade9swdapplicantsperseat7: String?
    let grade9swdapplicantsperseat8: String?
    let grade9swdapplicantsperseat9: String?
    let grade9swdapplicantsperseat10: String?
    let primaryAddress: String?
    let city: String?
    let zip: String?
    let stateCode: String?
    let latitude: String?
    let longitude: String?
    let communityBoard: String?
    let councileDistrict: String?
    let censusTract: String?
    let bin: String?
    let bbl: String?
    let nta: String?
    let borough: String?
    
    enum CodingKeys: String, CodingKey {
        case districtBoroughNumber = "dbn"
        case schoolName = "school_name"
        case boro
        case overviewParagraph = "overview_paragraph"
        case school10thSeats = "school_10th_seats"
        case academicOpportunities1 = "academicopportunities1"
        case academicOpportunities2 = "academicopportunities2"
        case academicOpportunities3 = "academicopportunities3"
        case academicOpportunities4 = "academicopportunities4"
        case academicOpportunities5 = "academicopportunities5"
        case englishLanguageLearnersPrograms = "ell_programs"
        case languageClasses = "language_classes"
        case advancedPlacementCourses = "advancedplacement_courses"
        case diplomaEndorsements = "diplomaendorsements"
        case neighborhood
        case sharedSpace = "shared_space"
        case campusName = "campus_name"
        case buildingCode = "building_code"
        case location
        case phoneNumber = "phone_number"
        case faxNumber = "fax_number"
        case schoolEmail = "school_email"
        case website
        case subway
        case bus
        case grades2018
        case finalGrades
        case totalStudents = "total_students"
        case startTime = "start_time"
        case endTime = "end_time"
        case additionalInfo1 = "addtl_info1"
        case extracurricularActivities = "extracurricular_activities"
        case psalSportsBoys = "psal_sports_boys"
        case psalSportsGirls = "psal_sports_girls"
        case psalSportsCoed = "psal_sports_coed"
        case schoolSports = "school_sports"
        case graduationRate = "graduation_rate"
        case attendanceRate = "attendance_rate"
        case pctStuEnoughVariety = "pct_stu_enough_variety"
        case collegeCareerRate = "college_career_rate"
        case pctStuSafe = "pct_stu_safe"
        case girls
        case boys
        case pbat
        case international
        case specialized
        case transfer
        case ptech
        case earlyCollege = "earlycollege"
        case geoEligibility = "geoeligibility"
        case schoolAccessibilityDescription = "school_accessibility_description"
        case programDescription1 = "prgdesc1"
        case programDescription2 = "prgdesc2"
        case programDescription3 = "prgdesc3"
        case programDescription4 = "prgdesc4"
        case programDescription5 = "prgdesc5"
        case programDescription6 = "prgdesc6"
        case programDescription7 = "prgdesc7"
        case programDescription8 = "prgdesc8"
        case programDescription9 = "prgdesc9"
        case programDescription10 = "prgdesc10"
        case directions1
        case directions2
        case directions3
        case directions4
        case directions5
        case directions6
        case directions7
        case directions8
        case directions9
        case directions10
        case requirement1_1
        case requirement1_2
        case requirement1_3
        case requirement1_4
        case requirement1_5
        case requirement1_6
        case requirement1_7
        case requirement1_8
        case requirement1_9
        case requirement1_10
        case requirement2_1
        case requirement2_2
        case requirement2_3
        case requirement2_4
        case requirement2_5
        case requirement2_6
        case requirement2_7
        case requirement2_8
        case requirement2_9
        case requirement2_10
        case requirement3_1
        case requirement3_2
        case requirement3_3
        case requirement3_4
        case requirement3_5
        case requirement3_6
        case requirement3_7
        case requirement3_8
        case requirement3_9
        case requirement3_10
        case requirement4_1
        case requirement4_2
        case requirement4_3
        case requirement4_4
        case requirement4_5
        case requirement4_6
        case requirement4_7
        case requirement4_8
        case requirement4_9
        case requirement4_10
        case requirement5_1
        case requirement5_2
        case requirement5_3
        case requirement5_4
        case requirement5_5
        case requirement5_6
        case requirement5_7
        case requirement5_8
        case requirement5_9
        case requirement5_10
        case requirement6_1
        case requirement6_2
        case requirement6_3
        case requirement6_4
        case requirement6_5
        case requirement6_6
        case requirement6_7
        case requirement6_8
        case requirement6_9
        case requirement6_10
        case requirement7_1
        case requirement7_2
        case requirement7_3
        case requirement7_4
        case requirement7_5
        case requirement7_6
        case requirement7_7
        case requirement7_8
        case requirement7_9
        case requirement7_10
        case requirement8_1
        case requirement8_2
        case requirement8_3
        case requirement8_4
        case requirement8_5
        case requirement8_6
        case requirement8_7
        case requirement8_8
        case requirement8_9
        case requirement8_10
        case requirement9_1
        case requirement9_2
        case requirement9_3
        case requirement9_4
        case requirement9_5
        case requirement9_6
        case requirement9_7
        case requirement9_8
        case requirement9_9
        case requirement9_10
        case requirement10_1
        case requirement10_2
        case requirement10_3
        case requirement10_4
        case requirement10_5
        case requirement10_6
        case requirement10_7
        case requirement10_8
        case requirement10_9
        case requirement10_10
        case requirement11_1
        case requirement11_2
        case requirement11_3
        case requirement11_4
        case requirement11_5
        case requirement11_6
        case requirement11_7
        case requirement11_8
        case requirement11_9
        case requirement11_10
        case requirement12_1
        case requirement12_2
        case requirement12_3
        case requirement12_4
        case requirement12_5
        case requirement12_6
        case requirement12_7
        case requirement12_8
        case requirement12_9
        case requirement12_10
        case offerRate1 = "offer_rate1"
        case offerRate2 = "offer_rate2"
        case offerRate3 = "offer_rate3"
        case offerRate4 = "offer_rate4"
        case offerRate5 = "offer_rate5"
        case offerRate6 = "offer_rate6"
        case offerRate7 = "offer_rate7"
        case offerRate8 = "offer_rate8"
        case offerRate9 = "offer_rate9"
        case offerRate10 = "offer_rate10"
        case program1
        case program2
        case program3
        case program4
        case program5
        case program6
        case program7
        case program8
        case program9
        case program10
        case code1
        case code2
        case code3
        case code4
        case code5
        case code6
        case code7
        case code8
        case code9
        case code10
        case interest1
        case interest2
        case interest3
        case interest4
        case interest5
        case interest6
        case interest7
        case interest8
        case interest9
        case interest10
        case method1
        case method2
        case method3
        case method4
        case method5
        case method6
        case method7
        case method8
        case method9
        case method10
        case seats9ge1
        case seats9ge2
        case seats9ge3
        case seats9ge4
        case seats9ge5
        case seats9ge6
        case seats9ge7
        case seats9ge8
        case seats9ge9
        case seats9ge10
        case grade9gefilledflag1
        case grade9gefilledflag2
        case grade9gefilledflag3
        case grade9gefilledflag4
        case grade9gefilledflag5
        case grade9gefilledflag6
        case grade9gefilledflag7
        case grade9gefilledflag8
        case grade9gefilledflag9
        case grade9gefilledflag10
        case grade9geapplicants1
        case grade9geapplicants2
        case grade9geapplicants3
        case grade9geapplicants4
        case grade9geapplicants5
        case grade9geapplicants6
        case grade9geapplicants7
        case grade9geapplicants8
        case grade9geapplicants9
        case grade9geapplicants10
        case seats9swd1
        case seats9swd2
        case seats9swd3
        case seats9swd4
        case seats9swd5
        case seats9swd6
        case seats9swd7
        case seats9swd8
        case seats9swd9
        case seats9swd10
        case grade9swdfilledflag1
        case grade9swdfilledflag2
        case grade9swdfilledflag3
        case grade9swdfilledflag4
        case grade9swdfilledflag5
        case grade9swdfilledflag6
        case grade9swdfilledflag7
        case grade9swdfilledflag8
        case grade9swdfilledflag9
        case grade9swdfilledflag10
        case grade9swdapplicants1
        case grade9swdapplicants2
        case grade9swdapplicants3
        case grade9swdapplicants4
        case grade9swdapplicants5
        case grade9swdapplicants6
        case grade9swdapplicants7
        case grade9swdapplicants8
        case grade9swdapplicants9
        case grade9swdapplicants10
        case seats1specialized
        case seats2specialized
        case seats3specialized
        case seats4specialized
        case seats5specialized
        case seats6specialized
        case applicants1specialized
        case applicants2specialized
        case applicants3specialized
        case applicants4specialized
        case applicants5specialized
        case applicants6specialized
        case appperseat1specialized
        case appperseat2specialized
        case appperseat3specialized
        case appperseat4specialized
        case appperseat5specialized
        case appperseat6specialized
        case seats101
        case seats102
        case seats103
        case seats104
        case seats105
        case seats106
        case seats107
        case seats108
        case seats109
        case seats1010
        case admissionspriority11
        case admissionspriority12
        case admissionspriority13
        case admissionspriority14
        case admissionspriority15
        case admissionspriority16
        case admissionspriority17
        case admissionspriority18
        case admissionspriority19
        case admissionspriority110
        case admissionspriority21
        case admissionspriority22
        case admissionspriority23
        case admissionspriority24
        case admissionspriority25
        case admissionspriority26
        case admissionspriority27
        case admissionspriority28
        case admissionspriority29
        case admissionspriority210
        case admissionspriority31
        case admissionspriority32
        case admissionspriority33
        case admissionspriority34
        case admissionspriority35
        case admissionspriority36
        case admissionspriority37
        case admissionspriority38
        case admissionspriority39
        case admissionspriority310
        case admissionspriority41
        case admissionspriority42
        case admissionspriority43
        case admissionspriority44
        case admissionspriority45
        case admissionspriority46
        case admissionspriority47
        case admissionspriority48
        case admissionspriority49
        case admissionspriority410
        case admissionspriority51
        case admissionspriority52
        case admissionspriority53
        case admissionspriority54
        case admissionspriority55
        case admissionspriority56
        case admissionspriority57
        case admissionspriority58
        case admissionspriority59
        case admissionspriority510
        case admissionspriority61
        case admissionspriority62
        case admissionspriority63
        case admissionspriority64
        case admissionspriority65
        case admissionspriority66
        case admissionspriority67
        case admissionspriority68
        case admissionspriority69
        case admissionspriority610
        case admissionspriority71
        case admissionspriority72
        case admissionspriority73
        case admissionspriority74
        case admissionspriority75
        case admissionspriority76
        case admissionspriority77
        case admissionspriority78
        case admissionspriority79
        case admissionspriority710
        case eligibility1
        case eligibility2
        case eligibility3
        case eligibility4
        case eligibility5
        case eligibility6
        case eligibility7
        case eligibility8
        case eligibility9
        case eligibility10
        case auditioninformation1
        case auditioninformation2
        case auditioninformation3
        case auditioninformation4
        case auditioninformation5
        case auditioninformation6
        case auditioninformation7
        case auditioninformation8
        case auditioninformation9
        case auditioninformation10
        case common_audition1
        case common_audition2
        case common_audition3
        case common_audition4
        case common_audition5
        case common_audition6
        case common_audition7
        case common_audition8
        case common_audition9
        case common_audition10
        case grade9geapplicantsperseat1
        case grade9geapplicantsperseat2
        case grade9geapplicantsperseat3
        case grade9geapplicantsperseat4
        case grade9geapplicantsperseat5
        case grade9geapplicantsperseat6
        case grade9geapplicantsperseat7
        case grade9geapplicantsperseat8
        case grade9geapplicantsperseat9
        case grade9geapplicantsperseat10
        case grade9swdapplicantsperseat1
        case grade9swdapplicantsperseat2
        case grade9swdapplicantsperseat3
        case grade9swdapplicantsperseat4
        case grade9swdapplicantsperseat5
        case grade9swdapplicantsperseat6
        case grade9swdapplicantsperseat7
        case grade9swdapplicantsperseat8
        case grade9swdapplicantsperseat9
        case grade9swdapplicantsperseat10
        case primaryAddress = "primary_address_line_1"
        case city
        case zip
        case stateCode = "state_code"
        case latitude
        case longitude
        case communityBoard = "community_board"
        case councileDistrict = "council_district"
        case censusTract = "census_tract"
        case bin
        case bbl
        case nta
        case borough
    }
    
    static func ==(lhs: School, rhs: School) -> Bool {
        guard let lhsDBN = lhs.districtBoroughNumber, let rhsDBN = rhs.districtBoroughNumber else { return false }
        return lhsDBN == rhsDBN
    }
}

