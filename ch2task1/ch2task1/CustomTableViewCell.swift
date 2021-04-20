//
//  CustomTableViewCell.swift
//  ch2task1
//
//  Created by Александр Чумаченко on 12.04.2021.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func cleanCell() {
        myImageView.image = nil
        titleLable.text = nil
        descriptionLabel.text = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        cleanCell()
    }
    
    override func prepareForReuse() {
        cleanCell()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(title: String?, description: String?, image: UIImage?) {
        myImageView.image = image
        titleLable.text = title
        descriptionLabel.text = description
    }
}
