//
//  SketchListCollectionViewCell.swift
//  Viper+DrawBoard
//
//  Created by Alberto Huerdo on 1/3/19.
//  Copyright © 2019 huerdo. All rights reserved.
//

import UIKit

class SketchListCollectionViewCell: UICollectionViewCell {
    
    var nameLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setup(with sketch: SketchViewModel) {
        self.addSubview(nameLabel)
        
        nameLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 32).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -32).isActive = true
        nameLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        nameLabel.text = sketch.id
        
    }
}

