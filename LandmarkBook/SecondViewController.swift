//
//  SecondViewController.swift
//  LandmarkBook
//
//  Created by Berkay Köse on 24.06.2019.
//  Copyright © 2019 Berkay Köse. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    var selectedImage = UIImage()
    var selectedName = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = selectedImage
        nameLabel.text = selectedName

        // Do any additional setup after loading the view.
    }
    

}
