//
//  PokemonViewController.swift
//  Evalios2
//
//  Created by Duc Luu on 08/08/2023.
//

import UIKit

class PokemonViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Pokemon"
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil),
                           forCellReuseIdentifier: "CustomTableViewCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        DataSet.pokemonList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customCell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
        let pokemon = DataSet.pokemonList[indexPath.row]
        customCell.imagePokemon.image = UIImage(named: pokemon.imageName)
        customCell.titlePokemon.text = pokemon.name
        return customCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let liveData = DataSet.pokemonList[indexPath.row]
        let detailsViewController = storyboard?.instantiateViewController(identifier: "DetailsViewController") as? DetailsViewController
        detailsViewController?.passData = liveData
        navigationController?.pushViewController(detailsViewController!, animated: true)
    }
}
