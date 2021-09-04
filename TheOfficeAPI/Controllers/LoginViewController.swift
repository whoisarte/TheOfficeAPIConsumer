import UIKit

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
        let autenticador = FirebaseManager.init(withEmail: TF_LoginUsuario.text, withPassword: TF_LoginContraseña.text)
        let isLoginable = autenticador.IngresarUsuario()
        if(isLoginable) {
            let _ : UIStoryboard = UIStoryboard(name: "Home", bundle:nil)
                    let resultViewController = storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
                    self.navigationController?.pushViewController(resultViewController, animated: true)
        } else {
            let alert = UIAlertController(
                  title: "ERROR",
                  message: "Error al iniciar sesión. Corrija sus datos o intentelo nuevamente",
                  preferredStyle: .alert)

                alert.addAction(UIAlertAction(title: "OK", style: .default))
                self.present(alert, animated: true, completion: nil)
        }
    }
    @IBAction func B_LoginRegistrarse_Click(_ sender: Any) {
        let _ : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
                let resultViewController = storyboard?.instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
                self.navigationController?.pushViewController(resultViewController, animated: true)
    }
    
    //Funciones de diseño
    func conversionComponentesRedondeados(){
        B_LoginEntrar.layer.cornerRadius = 5; B_LoginEntrar.clipsToBounds = true
        B_LoginRegistrarse.layer.cornerRadius = 5; B_LoginRegistrarse.clipsToBounds = true
        TF_LoginUsuario.layer.cornerRadius = 10.0; TF_LoginUsuario.clipsToBounds = true
        TF_LoginContraseña.layer.cornerRadius = 10.0; TF_LoginContraseña.clipsToBounds = true
    }
    
}
