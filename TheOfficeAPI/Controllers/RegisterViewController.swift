import UIKit
import Firebase

class RegisterViewController: UIViewController, ProtocolRoundComponents, UITextFieldDelegate {
    
    //Atributos de la vista RegisterView
    @IBOutlet weak var TF_RegisterUsuario: UITextField!
    @IBOutlet weak var TF_RegisterContraseña: UITextField!
    @IBOutlet weak var B_RegisterRegistrarse: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "The Office HH.RR"
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        view.addGestureRecognizer(tap) 
        roundComponents()
    }
    
    @IBAction func B_RegisterRegistrarse_Click(_ sender: Any) {
        Auth.auth().createUser(withEmail: TF_RegisterUsuario.text!, password: TF_RegisterContraseña.text!) { _, error in
          if error == nil {
            print("El usuario ha sido registrado correctamente")
            let alert = UIAlertController(title: "Excelent!", message: "El usuario ha sido registrado correctamente", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            //Llamado a login de nuevo
            self.navigationController?.popViewController(animated: true)
          } else {
            print("El usuario ha sido registrado correctamente")
            let alert = UIAlertController(title: "ERROR", message: error?.localizedDescription, preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            //Llamado a login de nuevo
            self.navigationController?.popViewController(animated: true)
          }
        }
    }
    
     func roundComponents() {
        B_RegisterRegistrarse.layer.cornerRadius = 5; B_RegisterRegistrarse.clipsToBounds = true
        TF_RegisterUsuario.layer.cornerRadius = 10.0; TF_RegisterUsuario.clipsToBounds = true
        TF_RegisterContraseña.layer.cornerRadius = 10.0; TF_RegisterContraseña.clipsToBounds = true
    }
    
    @objc func handleTap() {
        TF_RegisterUsuario.resignFirstResponder()
        TF_RegisterContraseña.resignFirstResponder()
    }

}

