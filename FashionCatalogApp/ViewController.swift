//
//  ViewController.swift
//  FashionCatalogApp
//
//  Created by MAC45 on 20/10/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var clothestableview: UITableView!
    
    let clothes: [ClothingItem] = [
        ClothingItem(name: "Red Silky Dress", price: 56.0, description: "This stunning red dress features a silky and smooth material, making it perfect for special occasions. Its elegant design is a great choice for a sexy look. Is it new? Yes.", category: "Dresses", isNew: "yes", image: "reddress"),
        
        ClothingItem(name: "Cool Green Dress", price: 60.0, description: "Stay cool in this green dress with its breathable fabric. It's the ideal choice for a fresh and comfortable outfit. Is it new? Yes.", category: "Dresses", isNew: "yes", image: "greendress"),
        
        ClothingItem(name: "Soft Purple Skirt", price: 52.0, description: "Experience the softness of this purple skirt with its gentle and cozy material. A great option for a fresh and stylish look. Is it new? Yes.", category: "Skirts", isNew: "yes", image: "purple"),
        
        ClothingItem(name: "Chic Gray Pants", price: 60.0, description: "These chic gray pants are made from cool fabric, providing both style and comfort. Is it new? Yes.", category: "Pants", isNew: "yes", image: "graypants"),
        
        ClothingItem(name: "Black Dress", price: 70.0, description: "Elevate your style with this beautiful black dress featuring a gorgeous material. Is it new? No.", category: "Dresses", isNew: "no", image: "blackdress")
    ]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        clothestableview.delegate = self
        clothestableview.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return clothes.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        performSegue(withIdentifier: "segue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ClothesTableViewCell
        
        let clothe = clothes[indexPath.row]
        
        cell.cImage.image = UIImage(named: clothe.image)
        
        cell.cTitle.text = clothe.name
        cell.cCategory.text = clothe.category
        cell.cPrice.text = String(clothe.price)
        cell.cIsNew.text = clothe.isNew
        cell.cDescription.text = clothe.description
        
        return cell
    }

}
