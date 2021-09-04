import UIKit

class RegisterViewController: UIViewController {

    //Atributos de la vista RegisterView
    @IBOutlet weak var TF_RegisterUsuario: UITextField!
    @IBOutlet weak var TF_RegisterContraseña: UITextField!
    @IBOutlet weak var B_RegisterRegistrarse: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "The Office HH.RR"
        conversionComponentesRedondeados()
    }
    @IBAction func B_RegisterRegistrarse_Click(_ sender: Any) {
        let autenticador = FirebaseManager.init(withEmail: TF_RegisterUsuario.text, withPassword: TF_RegisterContraseña.text)
        let isRegistrable = autenticador.IngresarUsuario()
        if (isRegistrable) { //Verificar el manejo de sentencia if
            let alert = UIAlertController(
                  title: "OK",
                  message: "Ha sido registrado correctamente",
                  preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(alert, animated: true, completion: nil)
            let _ : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
                    let resultViewController = storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
                    self.navigationController?.pushViewController(resultViewController, animated: true)
        } else {
            let alert = UIAlertController(
                  title: "ERROR",
                  message: "No ha sido registrado correctamente. Verifique sus datos e inténtelo nuevamente",
                  preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(alert, animated: true, completion: nil)
        }
    }
    func conversionComponentesRedondeados(){
        B_RegisterRegistrarse.layer.cornerRadius = 5; B_RegisterRegistrarse.clipsToBounds = true
        TF_RegisterUsuario.layer.cornerRadius = 10.0; TF_RegisterUsuario.clipsToBounds = true
        TF_RegisterContraseña.layer.cornerRadius = 10.0; TF_RegisterContraseña.clipsToBounds = true
    }
    

}
