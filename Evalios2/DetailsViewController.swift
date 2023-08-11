//
//  DetailsViewController.swift
//  Evalios2
//
//  Created by Duc Luu on 08/08/2023.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var imagePokemon: UIImageView!
    @IBOutlet weak var namePokemon: UILabel!
    @IBOutlet weak var typePokemon: UILabel!
    @IBOutlet weak var heightPokemon: UILabel!
    @IBOutlet weak var genPokemon: UILabel!
    @IBOutlet weak var pokedexNum: UILabel!
    
    var passData: DataSet.Pokemon!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.tintColor = UIColor(named: "CustomYellow")
        
        if let passData = passData {
            imagePokemon.image = UIImage(named: passData.imageName)
            namePokemon.text = passData.name
            pokedexNum.text = "#\(String(passData.pokedexNum))"
            genPokemon.text = "Gen: \(String(passData.generationNum))"
            heightPokemon.text = "Height: 0.\(String(passData.height))m"
            typePokemon.text = "Type: \(passData.type)"
        }
    }
}
