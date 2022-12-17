import 'package:flutter/material.dart';
import 'package:leandroucuamba_app/app_controller.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() {
    return HomePageState();
   
  }
}

/*
 Esta classe " HomePageState " ele so trabalha para a classe " HomePage ";
*/

class HomePageState extends State<HomePage>{
  @override
  int counter=0;

  Widget build(BuildContext context) {
     return Scaffold(
      drawer: Drawer(
         child: Column(
            children: [
               UserAccountsDrawerHeader(
                   currentAccountPicture: ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                          child: Image.asset('assets/images/img1.jpg'),
                      ),
                   accountName: Text('Leandro Santos'),
                   accountEmail: Text('leandrodossantos.lc5@gmail.com'),
                  ),
               ListTile(
                 leading: Icon(Icons.home),
                 title: Text('Inicio'),
                 subtitle: Text('tela de inicio'),
                 onTap: (){
                   print('home');
                 },
               ), 
               ListTile(
                 leading: Icon(Icons.home),
                 title: Text('Logout'),
                 subtitle: Text('Finalizar sessão'),
                 onTap: (){
                   Navigator.of(context).pushReplacementNamed('/');
                 },
               ), 

            ]),
      ),

      appBar: AppBar(
        actions: [CustomSwitch(),],
        title: Text('Home page'),
      ),
      
      body: Container(
        height: double.infinity,
        width: double.infinity,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text('Contador: $counter'),
            Container(height: 10,),
            CustomSwitch(),
            Container(height: 50,),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround, 
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 Container(
                    width: 50,
                    height: 50,
                    color: Colors.black,
                 ),
                 Container(
                    width: 50,
                    height: 50,
                    color: Colors.black,
                 ),
                 Container(
                    width: 50,
                    height: 50,
                    color: Colors.black,
                 ),
              ],
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState((){
             counter++;
           });
        },
      ),

     );
  }

}

class CustomSwitch extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Switch(
           value: AppController.instance.isDarkTheme,
           onChanged: (value){ 
             AppController.instance.changeTheme();
          },);
  }


}