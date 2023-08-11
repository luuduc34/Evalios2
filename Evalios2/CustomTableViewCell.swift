//
//  CustomTableViewCell.swift
//  Evalios2
//
//  Created by Duc Luu on 08/08/2023.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var titlePokemon: UILabel!
    @IBOutlet weak var imagePokemon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
