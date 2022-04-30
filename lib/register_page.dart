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
            Form(
                child: Container(
                  height: 58,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.75,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(90),
                    //border corner radius
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        //color of shadow
                        spreadRadius: 0.2,
                        //spread radius
                        blurRadius: 9,
                        // blur radius
                        offset: Offset(0, 6), // changes position of shadow
                      ),
                    ],
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Имя',
                    ),
                    keyboardType: TextInputType.name,
                  ),
                )),
            
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