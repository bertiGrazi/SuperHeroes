//
//  SuperHeroesDetail.swift
//  SuperHeroes
//
//  Created by Grazi Berti on 08/10/20.
//

import UIKit

class SuperHeroesDetail: UITableViewCell {

    @IBOutlet weak var labelSuperHeroesName: UILabel!
    
    @IBOutlet weak var imageViewSuperHeroes: UIImageView!
    
    
    
    func setup(nome: String, image: String){
        labelSuperHeroesName.text = nome
        imageViewSuperHeroes.image = UIImage(named: image)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
