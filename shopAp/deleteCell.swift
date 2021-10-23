//
//  AppDelegate.swift
//  shopAp
//
//  Created by Amal on 14/03/1443 AH.
//


import UIKit
protocol DataCollictionProtocol{ func deleteData(indx: Int) }
class deleteCell: UICollectionViewCell{
    var indexPath: IndexPath?
    
    @IBOutlet weak var dname: UILabel!
    @IBOutlet weak var dPrice: UILabel!
    @IBOutlet weak var dImage: UIImageView!
    var delegate: DataCollictionProtocol?
    @IBAction func deleteButton(_ sender: Any) {
        
        delegate?.deleteData(indx: (indexPath?.row)!)
        }
    func setup(product: Product){
        dImage.image = product.image
        dname.text = product.name
        dPrice.text = "\(product.price)"
    }
}