import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    //Atributos de la vista LoginView
    
    @IBOutlet weak var TF_LoginUsuario: UITextField!
    @IBOutlet weak var TF_LoginContraseña: UITextField!
    @IBOutlet weak var B_LoginEntrar: UIButton!
    @IBOutlet weak var B_LoginRegistrarse: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "The Office Entrance"
        conversionComponentesRedondeados()
        
    }
    @IBAction func B_LoginEntrar_Click(_ sender: Any) {
        Auth.auth().signIn(withEmail: TF_LoginUsuario.text!, password: TF_LoginContraseña.text!) { user, error in
          if let error = error, user == nil {
            let alert = UIAlertController(
              title: "Inicio de sesión fallido",
              message: error.localizedDescription,
              preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(alert, animated: true, completion: nil)
          } else {
            
          }
        }
    }
    
    @IBAction func B_LoginRegistrarse_Click(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let registerViewController = storyBoard.instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
                self.present(registerViewController, animated: true, completion: nil)
    }
    //Funciones de diseño
    func conversionComponentesRedondeados(){
        B_LoginEntrar.layer.cornerRadius = 5; B_LoginEntrar.clipsToBounds = true
        B_LoginRegistrarse.layer.cornerRadius = 5; B_LoginRegistrarse.clipsToBounds = true
        TF_LoginUsuario.layer.cornerRadius = 10.0; TF_LoginUsuario.clipsToBounds = true
        TF_LoginContraseña.layer.cornerRadius = 10.0; TF_LoginContraseña.clipsToBounds = true
    }
    
}
