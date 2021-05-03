//
//  ViewController.swift
//  26.App1
//
//  Created by Никита on 03.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    let defaultValue = UserDefaults.standard
    var photoName = "Photo1"
    var backClr = 0
    let colors: [UIColor] = [.white, .black]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoName = defaultValue.string(forKey: "Photo") ?? "Photo1"
        image.image = UIImage(named: photoName)
        backClr = defaultValue.integer(forKey: "Color")
        self.view.backgroundColor = colors[backClr]
    }

    @IBAction func switchPressed(_ sender: UISwitch) {
        if photoName == "Photo1" {
            photoName = "Photo2"
            backClr = 0
        } else {
            photoName = "Photo1"
            backClr = 1
        }
        
        defaultValue.set(photoName, forKey: "Photo")
        defaultValue.set(backClr, forKey: "Color")
        image.image = UIImage(named: photoName)
        self.view.backgroundColor = colors[backClr]
        
    }
    
}

