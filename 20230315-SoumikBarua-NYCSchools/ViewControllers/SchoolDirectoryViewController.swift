//
//  SchoolDirectoryViewController.swift
//  20230315-SoumikBarua-NYCSchools
//
//  Created by SB on 3/16/23.
//

import UIKit

class SchoolDirectoryViewController: UIViewController {
    
    var schoolDirectoryServices: SchoolDirectoryServices!
    var schools = [School]()
    var schoolDirectoryTableView = UITableView()
    var safeArea: UILayoutGuide!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "NYC DOE School Directory"
        safeArea = view.layoutMarginsGuide
        
        schoolDirectoryServices.fetchSchoolDirectory() { [weak self] result in
            guard let self = self else { return }
            
            switch result {
            case .success(let schools):
                self.schools = schools
            case .failure(let error):
                print("Error fetching school directory \(error)")
                self.schools.removeAll()
            }
            self.schoolDirectoryTableView.reloadData()
        }
        
        setupSchoolDirectoryTableView()
    }
    
    private func setupSchoolDirectoryTableView() {
        schoolDirectoryTableView.dataSource = self
        schoolDirectoryTableView.delegate = self
        
        self.view.addSubview(schoolDirectoryTableView)
        schoolDirectoryTableView.pin(to: self.view) // Handy extension from UIView_Ext.swift
        schoolDirectoryTableView.rowHeight = 100
        
        schoolDirectoryTableView.register(SchoolDirectoryTableViewCell.self, forCellReuseIdentifier: "SchoolDirectoryTableViewCell")
    }
}

// MARK: - UITableViewDataSource methods

extension SchoolDirectoryViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return schools.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "SchoolDirectoryTableViewCell", for: indexPath) as? SchoolDirectoryTableViewCell {
            let currentSchool = schools[indexPath.row]
            cell.setTitleLabel(name: currentSchool.schoolName!)
            return cell
        }
        return UITableViewCell()
    }
}

// MARK: - UITableViewDelegate methods

extension SchoolDirectoryViewController: UITableViewDelegate {
    
    // Based on the cell that was tapped, we navigate to the corresponding school's info screen
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let navigationController = self.navigationController {
            let school = schools[indexPath.row]
            let schoolInfoViewController = SchoolInfoViewController()
            schoolInfoViewController.school = school
            schoolInfoViewController.satResultsServices = SATResultsServices.shared
            
            navigationController.modalPresentationStyle = .fullScreen
            navigationController.pushViewController(schoolInfoViewController, animated: true)
        }
    }
}
