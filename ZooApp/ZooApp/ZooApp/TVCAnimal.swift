//
//  TVCAnimal.swift
//  ZooApp
//
//  Created by Nicthea Alvarez Platas on 3/7/19.
//  Copyright © 2019 Efrain Alvarez. All rights reserved.
//

import UIKit

class TVCAnimal: UITableViewCell {

    @IBOutlet weak var ivAnimalImage: UIImageView!
    @IBOutlet weak var laAnimalName: UILabel!
    @IBOutlet weak var laAnimalDes: UITextView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setAnimal(animal:Animal){
        self.laAnimalName.text = animal.name!
        self.laAnimalDes.text = animal.des!
        self.ivAnimalImage.image = UIImage(named:animal.image!)
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
