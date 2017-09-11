
//
//  ParkCell.swift
//  ParksPicker
//
//  Created by Dennis Vera on 9/11/17.
//  Copyright © 2017 Razeware, LLC. All rights reserved.
//

import UIKit

class ParkCell: UICollectionViewCell {
    @IBOutlet var parkImageView: UIImageView!
    @IBOutlet private weak var gradientView: GradientView!
    @IBOutlet private weak var captionLabel: UILabel!
    
    override func prepareForReuse() {
        parkImageView.image = nil
        captionLabel.text = ""
    }
    
    var park: Park? {
        didSet {
            if let nationalPark = park {
                parkImageView.image = UIImage(named: nationalPark.photo)
                captionLabel.text = nationalPark.photo
            }
        }
    }
    
}
