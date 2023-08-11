//
//  PickerViewController.swift
//  Evalios2
//
//  Created by Duc Luu on 08/08/2023.
//

import UIKit
import SafariServices

class PickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var imagePokemon: UIImageView!
    private let moreInfo = URL(string: NSLocalizedString("info_url", comment: ""))!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Picker"

        pickerView.delegate = self
        pickerView.dataSource = self
        imagePokemon.image = UIImage(named: "\(String(DataSet.pokemonList[0].name))")
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return DataSet.pokemonList.count
        } else {
            return DataSet.color.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return DataSet.pokemonList[row].name
        } else {
            return DataSet.color[row].colorName
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {

        let selectedPokemon = DataSet.pokemonList[pickerView.selectedRow(inComponent: 0)]
        setPokemon(name: selectedPokemon.name)
        let selectedColor = DataSet.color[pickerView.selectedRow(inComponent: 1)]
        setColor(color: selectedColor.color)
    }
    
    func setColor(color: UIColor){
        imagePokemon.backgroundColor = color
    }
    
    func setPokemon(name: String){
        imagePokemon.image = UIImage(named: name)
    }
    
    @IBAction func moreInfoBtn() {
        let safariVC = SFSafariViewController(url: moreInfo)
        present(safariVC, animated: true)
    }
}
