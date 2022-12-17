import 'package:flutter/material.dart';

import 'home_page.dart';



class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
   
   String email ='';
   String password ='';

  Widget _body(){
    return Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
              child: Padding(
              padding: const EdgeInsets.all(8.0),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  
                  Container(
                    width:200,
                    height:200,
                    child: Image.asset('assets/images/img1.jpg'),
                  ),
                  Container(height: 20),

             Card(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                           children: [
                              TextField(
                               onChanged: (text){
                               email = text;
                               },
                               keyboardType: TextInputType.emailAddress,
                               decoration: InputDecoration(
                               labelText: 'Email' ,
                               border: OutlineInputBorder(),
                            ),
                         ),

              SizedBox(height: 10),

                             TextField(
                               onChanged: (text){
                               password = text;
                               },
                               obscureText: true,
                               decoration: InputDecoration(
                               labelText: 'Password' ,
                               border: OutlineInputBorder(),
                            ),
                         ),

                         SizedBox(height: 15),

                        RaisedButton(
                           color: Colors.red,
                           textColor: Colors.white,
                             onPressed: (){
                               if(email == 'leandro' && password =='123'){
                                  Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(builder: (context) => HomePage()),
                                  );
                               }
                               else{
                                  print('Incorrecto');
                               }
                             }, 
                         child: Container(
                            width: double.infinity,
                            child: Text('Entrar',textAlign: TextAlign.center,),
                            ),
                         )

                        ],

                     ),
                ),
              ),

             ],
           ),
         ),
        ),
       ),
      ],
     );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/backgroung1.jpg'),
          Container(color: Colors.black.withOpacity(0.3),),
          _body(),
        ],

      )
    );

  }
}