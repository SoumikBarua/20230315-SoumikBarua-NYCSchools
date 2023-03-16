//
//  SchoolInfoViewController.swift
//  20230315-SoumikBarua-NYCSchools
//
//  Created by SB on 3/16/23.
//

import UIKit

class SchoolInfoViewController: UIViewController {
    
    var school: School!
    var satResult: SATResult?
    var satResultsServices: SATResultsServices!
    
    var safeArea: UILayoutGuide!
    var schoolNameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    var criticalReadingScoreTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Critical reading avg score"
        label.numberOfLines = 1
        return label
    }()
    
    var criticalReadingScoreValueLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        return label
    }()
    
    var mathScoreTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Math avg score"
        label.numberOfLines = 1
        return label
    }()
    
    var mathScoreValueLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        return label
    }()
    
    var writingScoreTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Writing avg score"
        label.numberOfLines = 1
        return label
    }()
    
    var writingScoreValueLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        return label
    }()
    
    var activityIndicatorView = UIActivityIndicatorView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        safeArea = view.layoutMarginsGuide
        schoolNameLabel.text = school.schoolName!
        
        configureContents()
        
        satResultsServices.fetchSATResults(schoolDBN: school.districtBoroughNumber!) { [weak self] result in
            guard let self = self else { return }
            
            switch result {
            case .success(let satResult):
                self.satResult = satResult
                self.criticalReadingScoreValueLabel.text = satResult.satCriticalReadingAvgScore!
                self.mathScoreValueLabel.text = satResult.satMathAvgScore!
                self.writingScoreValueLabel.text = satResult.satWritingAvgScore!
            case .failure(let error):
                self.criticalReadingScoreValueLabel.text = "Not available!"
                self.mathScoreValueLabel.text = "Not available!"
                self.writingScoreValueLabel.text = "Not available!"
                print("Error fetching sat result \(error)")
                self.satResult = nil
            }
            
            self.activityIndicatorView.isHidden = true
            self.activityIndicatorView.stopAnimating()
        }
    }
    
    private func configureContents() {
        configureActivityIndicator()
        configureLabels()
    }
    
    private func configureLabels() {
        configureSchoolNameLabel()
        configureCriticalReadingScoreTitleLabel()
        configureCriticalReadingScoreValueLabel()
        configureMathScoreTitleLabel()
        configureMathScoreValueLabel()
        configureWritingScoreTitleLabel()
        configureWritingScoreValueLabel()
        
    }
    
    private func configureSchoolNameLabel() {
        view.addSubview(schoolNameLabel)
        
        schoolNameLabel.translatesAutoresizingMaskIntoConstraints = false
        schoolNameLabel.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 24).isActive = true
        schoolNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        schoolNameLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.90).isActive = true
    }
    
    private func configureCriticalReadingScoreTitleLabel() {
        view.addSubview(criticalReadingScoreTitleLabel)
        
        criticalReadingScoreTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        criticalReadingScoreTitleLabel.topAnchor.constraint(equalTo: schoolNameLabel.bottomAnchor, constant: 32).isActive = true
        criticalReadingScoreTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
    }
    
    private func configureCriticalReadingScoreValueLabel() {
        view.addSubview(criticalReadingScoreValueLabel)
        
        criticalReadingScoreValueLabel.translatesAutoresizingMaskIntoConstraints = false
        criticalReadingScoreValueLabel.topAnchor.constraint(equalTo: schoolNameLabel.bottomAnchor, constant: 32).isActive = true
        criticalReadingScoreValueLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
    }
    
    private func configureMathScoreTitleLabel() {
        view.addSubview(mathScoreTitleLabel)
        
        mathScoreTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        mathScoreTitleLabel.topAnchor.constraint(equalTo: criticalReadingScoreTitleLabel.bottomAnchor, constant: 16).isActive = true
        mathScoreTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
    }
    
    private func configureMathScoreValueLabel() {
        view.addSubview(mathScoreValueLabel)
        
        mathScoreValueLabel.translatesAutoresizingMaskIntoConstraints = false
        mathScoreValueLabel.topAnchor.constraint(equalTo: criticalReadingScoreValueLabel.bottomAnchor, constant: 16).isActive = true
        mathScoreValueLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
    }
    
    private func configureWritingScoreTitleLabel() {
        view.addSubview(writingScoreTitleLabel)
        
        writingScoreTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        writingScoreTitleLabel.topAnchor.constraint(equalTo: mathScoreTitleLabel.bottomAnchor, constant: 16).isActive = true
        writingScoreTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
    }
    
    private func configureWritingScoreValueLabel() {
        view.addSubview(writingScoreValueLabel)
        
        writingScoreValueLabel.translatesAutoresizingMaskIntoConstraints = false
        writingScoreValueLabel.topAnchor.constraint(equalTo: mathScoreValueLabel.bottomAnchor, constant: 16).isActive = true
        writingScoreValueLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
    }
    
    
    private func configureActivityIndicator() {
        view.addSubview(activityIndicatorView)
        
        activityIndicatorView.translatesAutoresizingMaskIntoConstraints = false
        activityIndicatorView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        activityIndicatorView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        activityIndicatorView.heightAnchor.constraint(equalToConstant: 500).isActive = true
        activityIndicatorView.widthAnchor.constraint(equalToConstant: 500).isActive = true
        
        activityIndicatorView.isHidden = false
        activityIndicatorView.startAnimating()
    }
    
}
