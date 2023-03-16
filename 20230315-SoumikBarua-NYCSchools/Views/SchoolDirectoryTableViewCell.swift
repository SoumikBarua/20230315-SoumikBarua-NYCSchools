//
//  SchoolDirectoryTableViewCell.swift
//  20230315-SoumikBarua-NYCSchools
//
//  Created by SB on 3/16/23.
//

import UIKit

class SchoolDirectoryTableViewCell: UITableViewCell {
    
    var schoolNameLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // Adjusting default selection and separator behaviors
        self.selectionStyle = .none
        self.preservesSuperviewLayoutMargins = false
        self.separatorInset = UIEdgeInsets.zero
        self.layoutMargins = UIEdgeInsets.zero
        
        addSubview(schoolNameLabel)
        configureSchoolNameLabel()
        setSchoolNameLabelConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureSchoolNameLabel() {
        schoolNameLabel.numberOfLines = 0
        schoolNameLabel.adjustsFontSizeToFitWidth = true
    }
    
    private func setSchoolNameLabelConstraints() {
        schoolNameLabel.translatesAutoresizingMaskIntoConstraints = false
        schoolNameLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        schoolNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        schoolNameLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
        schoolNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
    }
    
    func setTitleLabel(name: String) {
        schoolNameLabel.text = name
    }
}
