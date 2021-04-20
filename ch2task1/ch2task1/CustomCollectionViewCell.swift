//
//  CustomCollectionViewCell.swift
//  ch2task1
//
//  Created by Александр Чумаченко on 14.04.2021.
//

import UIKit


class CustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var myLabel: UILabel!
    
    func clearCell() {
        myLabel.text = nil
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        clearCell()
    }

    override func prepareForReuse() {
        clearCell()
    }
    
    func configure(title: String) {
        myLabel.text = title
    }
}
