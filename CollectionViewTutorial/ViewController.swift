//
//  ViewController.swift
//  CollectionViewTutorial
//
//  Created by Scott on 7/31/16.
//  Copyright © 2016 Brosnappedfink. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    var tableData: [String] = ["Evo X", "458", "GTR", "GTR", "Evo X", "458", "GTR", "GTR", "Evo X", "458", "GTR", "GTR", "Evo X", "458", "GTR", "GTR", "Evo X", "458", "GTR", "GTR", "Evo X", "458", "GTR", "GTR", "Evo X", "458", "GTR", "GTR", "Evo X", "458", "GTR", "GTR", "Evo X", "458", "GTR", "GTR", "Evo X", "458", "GTR", "GTR"]
    var tableImages: [String] = ["evox.jpg", "458.jpg", "gtr.jpg", "gtr.jpg", "evox.jpg", "458.jpg", "gtr.jpg", "gtr.jpg", "evox.jpg", "458.jpg", "gtr.jpg", "gtr.jpg", "evox.jpg", "458.jpg", "gtr.jpg", "gtr.jpg", "evox.jpg", "458.jpg", "gtr.jpg", "gtr.jpg", "evox.jpg", "458.jpg", "gtr.jpg", "gtr.jpg", "evox.jpg", "458.jpg", "gtr.jpg", "gtr.jpg", "evox.jpg", "458.jpg", "gtr.jpg", "gtr.jpg", "evox.jpg", "458.jpg", "gtr.jpg", "gtr.jpg", "evox.jpg", "458.jpg", "gtr.jpg", "gtr.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tableData.count //Return the number of items in the tableData array (created above)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: colvwCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! colvwCell //Link it up to the custom class we made, colvwCell.swift
        
        cell.label.text = tableData[indexPath.row] //Update the text of the  "label" UILabelView (defined in colvwCell.swift)
        cell.image.image = UIImage(named: tableImages[indexPath.row]) //Update the text of the "image" UIImageView (defined in colvwCell.swift) (in hindsight, I should have called it something other than "image" to be less confusing, but it's the middle one.)
        
        return cell
        
    }
    
    //Now here's a function that prints some info out to the console when the user touches the cell.
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Cell \(indexPath.row) selected") //Print which cell was selected
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

