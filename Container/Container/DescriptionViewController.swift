//
//  DescriptionViewController.swift
//  Container
//
//  Created by Leandro Jabur on 12/1/17.
//  Copyright © 2017 Rafagan Abreu. All rights reserved.
//

import UIKit

class DescriptionViewController: UIViewController {

    var descritpion: String?
    var img: UIImage?
    
    @IBOutlet weak var imgFighter: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var imgFighter2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgFighter.image = img
        imgFighter2.image = img
        descriptionLabel.text = descritpion
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
