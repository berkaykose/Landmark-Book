//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Berkay Köse on 24.06.2019.
//  Copyright © 2019 Berkay Köse. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var placeNameArray = ["Colosseum","Eifel Tower","Kremlin","Taj Mahal","Stonehenge","Great Wall"]
    var imageArray = [UIImage]()
    
   
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        imageArray.append(UIImage(named: "colosseum")!)
        imageArray.append(UIImage(named: "eifeltower")!)
        imageArray.append(UIImage(named: "kremlin")!)
        imageArray.append(UIImage(named: "tajmahal")!)
        imageArray.append(UIImage(named: "stonehenge")!)
        imageArray.append(UIImage(named: "greatwall")!)
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return placeNameArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ViewCell") as! TableViewCell
        
        cell.placeLabel.text = placeNameArray[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondStoryboardID") as! SecondViewController
        
        vc.selectedImage = imageArray[indexPath.row]
        vc.selectedName = placeNameArray[indexPath.row]
        
        self.show(vc, sender: nil)
    }
    


}

