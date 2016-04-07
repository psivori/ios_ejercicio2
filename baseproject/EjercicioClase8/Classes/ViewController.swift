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
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var profileDescription: UITextView!

    let users = [["name":"Walter White","image":"img-profile","description": "Walt es un padre de familia de 50 años, profesor de química en un instituto de Albuquerque, Nuevo México. Un día, Walt es diagnosticado con un cáncer de pulmón inoperable."],["name":"Jessie Pitman","image":"img-profile-2","description": "Walt es un padre de familia de 50 años, profesor de química en un instituto de Albuquerque, Nuevo México. Un día, Walt es diagnosticado con un cáncer de pulmón inoperable."],["name":"Tuco","image":"img-profile-4","description": "Walt es un padre de familia de 50 años, profesor de química en un instituto de Albuquerque, Nuevo México. Un día, Walt es diagnosticado con un cáncer de pulmón inoperable."],]

    var currentUser : User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeProfile()
        
        profileImageView.image = UIImage(named: currentUser.image)
        profileDescription.text = currentUser.description
        profileName.text = currentUser.name
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
    
    @IBAction func `switch`(sender: UIButton) {
         changeProfile()
    }
    
    func changeProfile(){
        var i = Int.randomFrom(0, to: 3)
        currentUser = User.init(d: users[i])
    }

    
    
        
}

