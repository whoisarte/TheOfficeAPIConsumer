import Firebase

class FirebaseManager {
    
    var email: String?
    var password: String?
    
    init(withEmail: String?, withPassword: String?){
        if let withEmail = withEmail, let withPassword = withPassword {
            email = withEmail
            password = withPassword
        } else {
            print("Alguno de los valores no fue ingresado. Por favor ingrese ambos datos.")
        }
    }
    func RegistrarUsuario() -> Bool {
        let emailUnwrapped = email!
        let passwordUnwrapped = password!
        var isRegistrable: Bool = false
        Auth.auth().createUser(withEmail: emailUnwrapped, password: passwordUnwrapped) { _, error in
          if error == nil {
            Auth.auth().signIn(withEmail: emailUnwrapped, password: passwordUnwrapped)
            isRegistrable = true
          } else {
            print("Error al registrar usuario")
            isRegistrable = false
          }
        }
        return isRegistrable
    }
    
    func IngresarUsuario() -> Bool {
        let emailUnwrapped = email!
        let passwordUnwrapped = password!
        var isLoginable: Bool = true
        Auth.auth().signIn(withEmail: emailUnwrapped, password: passwordUnwrapped) { user, error in
            if let _ = error, user == nil {
            print("Error al ingresar usuario. Verifique sus datos o intente más tarde.")
            isLoginable = false
          }
        }
        return isLoginable
    }


}
