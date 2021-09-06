import UIKit
import Firebase

class RegisterViewController: UIViewController {

    
    var hola = ""
    //Atributos de la vista RegisterView
    @IBOutlet weak var TF_RegisterUsuario: UITextField!
    @IBOutlet weak var TF_RegisterContraseña: UITextField!
    @IBOutlet weak var B_RegisterRegistrarse: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "The Office HH.RR"
        
        print(hola)
        conversionComponentesRedondeados()
    }
    
    @IBAction func B_RegisterRegistrarse_Click(_ sender: Any) {
        Auth.auth().createUser(withEmail: TF_RegisterUsuario.text!, password: TF_RegisterContraseña.text!) { _, error in
          if error == nil {
            print("El usuario ha sido registrado correctamente")
            let alert = UIAlertController(title: "Excelent", message: "El usuario ha sido registrado correctamente", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            //Llamado a login de nuevo
            self.navigationController?.popViewController(animated: true)
          } else {
            print("Error creando usuario: \(error?.localizedDescription ?? "")")
          }
        }
    }

    func conversionComponentesRedondeados(){
        B_RegisterRegistrarse.layer.cornerRadius = 5; B_RegisterRegistrarse.clipsToBounds = true
        TF_RegisterUsuario.layer.cornerRadius = 10.0; TF_RegisterUsuario.clipsToBounds = true
        TF_RegisterContraseña.layer.cornerRadius = 10.0; TF_RegisterContraseña.clipsToBounds = true
    }
}

