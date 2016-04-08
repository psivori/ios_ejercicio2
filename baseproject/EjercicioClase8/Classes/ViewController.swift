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

    let users = [["name":"Walter White","image":"img-profile","description": "Walt es un padre de familia de 50 años, profesor de química en un instituto de Albuquerque, Nuevo México. Un día, Walt es diagnosticado con un cáncer de pulmón inoperable."],["name":"Jesse Pinkman","image":"img-profile-2","description": "Jesse Bruce Pinkman es el compañero de Walter White en el tráfico de metanfetamina. En el instituto, Jesse era un consumidor, fabricante y traficante de poca monta de metanfetamina. Era un estudiante que prestaba poca atención a las clases de química de su profesor, el propio Walter."],["name":"Skyler White","image":"img-profile-3","description": "Skyler White (de soltera Lambert) es la mujer de Walter White y madre de Walter White Jr. y Holly White. Skyler ha tenido múltiples trabajos para obtener dinero: escribiendo historias cortas, vendiendo objetos en eBay, trabajando como contable en Beneke Fabricators."],["name":"Tuco Salamanca","image":"img-profile-4","description": "Tuco Salamanca es un traficante de drogas mexicano que actuó brevemente como distribuidor de metanfetamina para Walter White y Jesse Pinkman. Tuco es un sociópata impredecible que a menudo se comporta de forma violenta."]]

    var currentUser : User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (currentUser == nil){
        changeProfile()
        }
    }

    override func viewWillAppear(animated: Bool) {
        
        super.viewWillAppear(animated)
        
        self.profileImageView.layer.cornerRadius = self.profileImageView.frame.size.width / 2.0
        self.profileImageView.layer.borderWidth = 2
        self.profileImageView.layer.borderColor = UIColor.whiteColor().CGColor
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
        profileImageView.image = UIImage(named: currentUser.image)
        profileDescription.text = currentUser.description
        profileName.text = currentUser.name
    }

    
    
        
}

