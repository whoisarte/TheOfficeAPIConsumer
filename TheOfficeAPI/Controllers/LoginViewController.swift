import UIKit
import Firebase

class LoginViewController: UIViewController, ProtocolRoundComponents, UITextFieldDelegate {
    
    //Atributos de la vista LoginView
    @IBOutlet weak var TF_LoginUsuario: UITextField!
    @IBOutlet weak var TF_LoginContraseña: UITextField!
    @IBOutlet weak var B_LoginEntrar: UIButton!
    @IBOutlet weak var B_LoginRegistrarse: UIButton!
  
    //Arreglo de prueba
    var allQuotes: [DataClassQuote]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "The Office Entrance"
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        view.addGestureRecognizer(tap) 
        roundComponents()
    }
    
    @IBAction func B_LoginEntrar_Click(_ sender: Any) {
        Auth.auth().signIn(withEmail: TF_LoginUsuario.text!, password: TF_LoginContraseña.text!) { user, error in
          if let error = error, user == nil {
            let alert = UIAlertController(
              title: "Inicio de sesión fallido",
              message: error.localizedDescription,
              preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            //Mostrar la pestaña en forma de full screen
            self.present(alert, animated: true, completion: nil)
          } else {
            //self.performSegue(withIdentifier: MainStorySegues.homeSegue, sender: self)
            let storyboard: UIStoryboard = UIStoryboard(name: "Home", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
            self.show(vc, sender: self)
          }
        }
    }
    @IBAction func B_LoginRegistrarse_Click(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let registerViewController = storyBoard.instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
        registerViewController.modalPresentationStyle = .overFullScreen
        
    }
    //Funciones de diseño
    func roundComponents(){
        B_LoginEntrar.layer.cornerRadius = 5; B_LoginEntrar.clipsToBounds = true
        B_LoginRegistrarse.layer.cornerRadius = 5; B_LoginRegistrarse.clipsToBounds = true
        TF_LoginUsuario.layer.cornerRadius = 10.0; TF_LoginUsuario.clipsToBounds = true
        TF_LoginContraseña.layer.cornerRadius = 10.0; TF_LoginContraseña.clipsToBounds = true
    }
    
    //Funciones para ocultar teclado al tocar en cualquier parte de la pantalla y en la tecla return del teclado
    @objc func handleTap() {
        TF_LoginUsuario.resignFirstResponder()
        TF_LoginContraseña.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
}
