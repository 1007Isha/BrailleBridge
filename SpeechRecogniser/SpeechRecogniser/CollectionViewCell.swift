//
//  CollectionViewCell.swift
//  SpeechRecogniser
//
//  Created by student on 24/04/24.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
        
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
            super.awakeFromNib()
            // Initialization code
            configureUI()
        }
        
        func configureUI() {
            // Customize cell appearance
            self.layer.cornerRadius = 10
            self.layer.borderWidth = 1
            self.layer.borderColor = UIColor.gray.cgColor
        }
}
