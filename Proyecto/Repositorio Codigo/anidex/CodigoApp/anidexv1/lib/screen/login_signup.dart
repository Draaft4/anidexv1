import 'package:anidexv1/config/palette.dart';
import 'package:flutter/material.dart';

class LoginSignupScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _LoginSignUpScreenState();
      }
    
    }
    
class _LoginSignUpScreenState extends State<LoginSignupScreen> {
   bool _IsMale = false;
   bool _IsSignupScreen = true;
   bool _IsRememberMe = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/background.jpg"),
                  fit: BoxFit.fill
                  )
              ),
              child: Container(
                padding: EdgeInsets.only(top: 90,left: 20),
                color: Color(0xFF3B5999).withOpacity(0.85),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Bienvenido a",
                        style: TextStyle(
                          fontSize: 25,
                          letterSpacing: 2,
                          color: Colors.yellow[700],
                        ),
                        children:[
                          TextSpan(
                            text: " Anidex!",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.yellow[700],
                            ),
                          )
                        ]
                      )
                    ),
                    SizedBox(height: 5,),
                    Text("Inicie Sesion para continuar",
                     style: TextStyle(
                          letterSpacing: 1,
                          color: Colors.white,
                        ),
                     ),
                  ],
                  ),
              ),
            ),
          ),
          buildButtonHalfContainer(true),
          Positioned(
            top: 150,
            child: Container(
              height: 380,
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width-40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 15,
                        spreadRadius: 5,
                      )
                  ]
                ),
              child: Column(children:[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          _IsSignupScreen = false;
                        });
                      },
                        child: Column(children:[
                          Text("LOGIN", style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold,
                              color: ! _IsSignupScreen? Palette.activeColor : Palette.textColor1                        
                            ),),
                            if(!_IsSignupScreen)
                          Container(
                            margin: EdgeInsets.only(top: 3),
                            height: 2,
                            width: 55,
                            color: Colors.orange
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                          onTap: (){
                            setState(() {
                              _IsSignupScreen = true;
                            });
                          },
                          child: Column(children:[
                          Text("SIGNUP", style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold,
                              color:  _IsSignupScreen? Palette.activeColor : Palette.textColor1
                            ),),
                            if(_IsSignupScreen)
                          Container(
                            margin: EdgeInsets.only(top: 3),
                            height: 2,
                            width: 55,
                            color: Colors.orange
                          ),
                        ],
                      ),
                    ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top:20),
                    child: Column(
                      children: [
                        buildTextField(Icons.supervised_user_circle,"Nombre de Usuario",false,false),
                        buildTextField(Icons.email,"Correo Electronico",false,true),
                        buildTextField(Icons.lock,"Contraseña",true,false),
                        Row(children:[
                          Padding(
                          padding: const EdgeInsets.only(top: 10, left: 10),
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                _IsMale = true;
                              });
                            },
                              child: Row(
                              children: [
                                Container(
                                  width: 30,
                                  height: 30,
                                  margin:  EdgeInsets.only(right: 8),
                                  decoration: BoxDecoration(
                                    color:  _IsMale? Palette.textColor2:Colors.transparent,
                                    border: Border.all(
                                      width: 1,
                                      color: Palette.textColor1),
                                      borderRadius: BorderRadius.circular(15)),
                                      child: Icon(
                                        Icons.nature, color: _IsMale? Colors.white:Palette.iconColor),
                                ),
                                Text(
                                  "Hombre",
                                  style: TextStyle(color: Palette.textColor1),)
                              ]
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10 ,left: 10),
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                _IsMale = false;
                              });
                            },
                              child: Row(
                              children: [
                                Container(
                                  width: 30,
                                  height: 30,
                                  margin:  EdgeInsets.only(right: 8),
                                  decoration: BoxDecoration(
                                    color:  !_IsMale? Palette.textColor2:Colors.transparent,
                                    border: Border.all(
                                      width: 1,
                                      color: Palette.textColor1),
                                      borderRadius: BorderRadius.circular(15)),
                                      child: Icon(
                                        Icons.nature, color: !_IsMale? Colors.white:Palette.iconColor),
                                ),
                                Text(
                                  "Mujer",
                                  style: TextStyle(color: Palette.textColor1),)
                              ]
                            ),
                          ),
                        ),
                        ]),
                        Container(
                          width: 200,
                          margin: EdgeInsets.only(top: 20),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: "Al aceptar usted acepta nuestros",
                              style: TextStyle(color: Palette.textColor2),
                              children:[
                                TextSpan(
                                  text: " terminos y condiciones",
                                  style: TextStyle(color: Colors.orange),
                                )
                              ] ,
                            ),
                          )
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ), 
          ),
          buildButtonHalfContainer(false),
          Positioned(
            top: MediaQuery.of(context).size.height-65,
            right: 0,
            left: 0,
            child: Column(children:[
              Text("O inicia sesion con"),
              Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                buildSocialButton("Facebook",Palette.facebookColor),
                buildSocialButton("Google",Palette.googleColor),
              ],
              ),
            ],),
          ),
        ],
      ),
    );
  }

  FlatButton buildSocialButton(String title, Color background) {
    return FlatButton(
                color: background,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(width: 1,color:Colors.grey),
                ),
                onPressed: (){},
                child: Row(children:[
                   Text(title,style: TextStyle(color: Colors.white),)
                ]),
              );
  }

  Positioned buildButtonHalfContainer(bool showShadow) {
    return Positioned(
          top: 485,
          right: 0,
          left: 0,
          child: Center(
            child: Container(
              height: 90,
              width: 90,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow:[
                  // ignore: sdk_version_ui_as_code
                  if(showShadow)
                      BoxShadow(
                        color: Colors.black.withOpacity(.4),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0,1)
                      ) 
                    ]
              ),
              child: !showShadow?Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.orange[200],Colors.red[400]],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow:[
                      BoxShadow(
                        color: Colors.black.withOpacity(.4),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0,1)
                      ) 
                    ] 
                ),
                child: Icon(Icons.arrow_forward, color: Colors.white),
              ):Container(),
            ),
          ),
        );
  }

  Widget buildTextField(IconData icon, String hint, bool isPassword, bool isEmail) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: TextField(
        obscureText: isPassword,
        keyboardType: isEmail? TextInputType.emailAddress:TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon, color: Palette.textColor1
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: 
              BorderSide(color: Palette.textColor1),
            borderRadius:
              BorderRadius.all(Radius.circular(35.0))
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: 
                BorderSide(color: Palette.textColor1),
                  borderRadius:
                    BorderRadius.all(Radius.circular(35.0))
                ),
            contentPadding: EdgeInsets.all(10),
            hintText: hint,
            hintStyle: TextStyle(fontSize: 14,color: Palette.textColor1 )
            ),
        ),
    );
  }
  
}