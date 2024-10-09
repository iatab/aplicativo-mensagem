import 'package:chat_app/views/feed_page.dart';
import 'package:chat_app/views/login_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   HomePage({ super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bem Vindo !!'),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {
          Navigator.pop(context);
        },)
      ),
      body: Container(
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Column(              
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Text('Deixe o seu feedback sobre o nosso sistema',
                style: TextStyle(fontSize: 50),),


                ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FeedPage(),));
                } , child: Text("Feedback",
                style: TextStyle(fontSize: 25),))
              ],
            ),
          ],
        ),
      )
    );
  }
}
