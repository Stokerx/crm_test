import 'package:crm_test/menu.dart';
import 'package:crm_test/styles.dart';
import 'package:crm_test/rutas/rutas.dart';
import 'package:flutter/material.dart';

class FormCard extends StatefulWidget {
  const FormCard({Key? key});

  @override
  State<FormCard> createState() => _FormCardState();
}

class _FormCardState extends State<FormCard> {
  bool stateojo = true;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String user = 'KiwiG';
  String pass = '123';

  String userlogin = '';
  String passlogin = '';

  void iniciarSesion() {
    FormState? formState = _formKey.currentState;
    print("aaas");
    if (formState != null) {
      print("llanto");
      if (formState.validate()) {
        formState.save();

        // Print the entered values
        print("User Login: $userlogin");
        print("Password: $passlogin");

        if(userlogin==user && passlogin==pass){
          print("funciona");
          Navigator.of(context).pushReplacementNamed('/menu');
        }else{
          print("no funciona");
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.height;
    double height = MediaQuery.of(context).size.width;
    return Form(
        key: _formKey,
        child: Container(
          alignment: Alignment.center,
          height: height,
          // color: Color.fromARGB(255, 212, 72, 72),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /*SizedBox(
                      height: height*0.145,
                      
                    ),*/
              Image.asset(
                "lib/images/logo.png",
                scale: 8,
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Gestor Kay",
                    style: ralewayStyle.copyWith(
                      fontSize: 25,
                      color: Colors.black,
                    ))
              ])),
              SizedBox(
                height: height * 0.02,
              ),
              Column(
                
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      textAlign: TextAlign.left,
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Usuario",
                            style: ralewayStyle.copyWith(
                              fontSize: 25,
                              color: Colors.black,
                            ))
                      ])),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 50.0,
                    width: width * 0.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Color.fromARGB(255, 217, 217, 217)),
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 16),
                        border: InputBorder.none,
                      ),
                      validator: (String? value) {
                        // Change parameter type to String?
                        if (value == null || value.isEmpty) {
                          return 'El campo está vacío';
                        } else {
                          return null; // Return null when the field is not empty
                        }
                      },
                      onSaved: (String? value) {
                        // Change parameter type to String?
                        userlogin = value ??
                            ''; // Assign the value or an empty string if null
                      },
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  RichText(
                      textAlign: TextAlign.left,
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Contraseña",
                            style: ralewayStyle.copyWith(
                              fontSize: 25,
                              color: Colors.black,
                            ))
                      ])),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 50.0,
                    width: width * 0.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Color.fromARGB(255, 217, 217, 217)),
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 16),
                        border: InputBorder.none,
                        labelText: "Ingrese contraseña",
                        suffixIcon: IconButton(
                          icon: stateojo
                              ? Icon(Icons.visibility)
                              // ignore: dead_code
                              : Icon(Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              stateojo =
                                  !stateojo; // Cambiar el valor actual del estado
                            });
                          },
                        ),
                      ),
                      obscureText: stateojo,
                      validator: (String? value) {
                        // Change parameter type to String?
                        if (value == null || value.isEmpty) {
                          return 'El campo está vacío';
                        } else {
                          return null; // Return null when the field is not empty
                        }
                      },
                      onSaved: (String? value) {
                        // Change parameter type to String?
                        passlogin = value ??
                            ''; // Assign the value or an empty string if null
                      },
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              // Boton
              SizedBox(
                width: width * 0.3,
                height: height * 0.037,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 161, 132, 222),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text("Login"),
                  onPressed: () {
                    return iniciarSesion();
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
