//
//  SectionHeaderView.swift
//  ParksPicker
//
//  Created by Dennis Vera on 9/11/17.
//  Copyright © 2017 Razeware, LLC. All rights reserved.
//

import UIKit

class SectionHeaderView: UICollectionReusableView {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    
    var title: String? {
        didSet {
            titleLabel.text = title
        }
    }
    
    var icon: UIImage? {
        didSet {
            iconImageView.image = icon
        }
    }
}
