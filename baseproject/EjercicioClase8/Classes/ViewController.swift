//
//  ViewController.swift
//  EjercicioClase8
//
//  Created by Diego Pais on 4/1/16.
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var profileImageView: UIImageView!

    let users = [["name":"Walter White","image":"img-profile","description": "Walt es un padre de familia de 50 años, profesor de química en un instituto de Albuquerque, Nuevo México. Un día, Walt es diagnosticado con un cáncer de pulmón inoperable."]]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(animated: Bool) {
        
        super.viewWillAppear(animated)
        
        self.profileImageView.layer.cornerRadius = self.profileImageView.frame.size.width / 2.0
        self.profileImageView.layer.borderWidth = 2
        self.profileImageView.layer.borderColor = UIColor.whiteColor().CGColor
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
    func createUserFromDictionary{
        
    }
    
        
}

