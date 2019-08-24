//
//  DetailViewController.swift
//  Project1HWS
//
//  Created by Christian Lorenzo on 8/23/19.
//  Copyright © 2019 Christian Lorenzo. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView! //This is the connection for the imageVIew Screen.
    var selectedImage : String? // Optional String. 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = selectedImage
        navigationItem.largeTitleDisplayMode = .never  //This is to display small letters for the description of the pictures on the screen.

        if let imageToLoad = selectedImage { //Unwraping the optional selectedImage, it should never be nil.
            imageView.image = UIImage(named: imageToLoad) //The value from selectedImage is passed to imageToLoad. 
        }
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
