import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Регистрация',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            
            Container(
              margin: EdgeInsets.only(top: 183),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color.fromRGBO(255, 255, 255, 1)),
                  minimumSize: MaterialStateProperty.all(
                    Size(MediaQuery.of(context).size.width * 0.7, 58)
                    ),
                  shadowColor: MaterialStateProperty.all(Color.fromRGBO(1, 1, 1, 1)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                    // side: BorderSide(color: Colors.red),
                  )),
                  elevation: MaterialStateProperty.all(10),
                  // padding: MaterialStateProperty.all(EdgeInsets.all(20))
                ),
                onPressed: (){
                  
                },
                child: Text(
                  'Зарегистрироваться',
                  style: TextStyle(color: Colors.blue[900], fontSize: 20),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyForm{
  
}