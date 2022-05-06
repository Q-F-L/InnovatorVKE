import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(

          // mainAxisAlignment: MainAxisAlignment.center,
          padding: EdgeInsets.only(top: 120, left: MediaQuery.of(context).size.width * 0.07, right: MediaQuery.of(context).size.width * 0.07),
          children: <Widget>[
            Form(
              child: Center(
                heightFactor: 1.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 58,
                      width: MediaQuery
                          .of(context)
                          .size
                          .height * 0.5,
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
                          hintText: 'Почта',
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25),

                      height: 58,
                      width: MediaQuery
                          .of(context)
                          .size
                          .height * 0.5,
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
                          hintText: 'Пароль',
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              margin: EdgeInsets.only(top: 140),
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
                    Navigator.pushNamed(context, '/login_page');
                  },
                  child: Text(
                    'Войти',
                    style: TextStyle(color: Colors.blue[900], fontSize: 20),
                  )
              ),
            ),
            TextButton(
              onPressed: (){
                Navigator.pushNamed(context, '/register_page');
              },
              child: Text('Зарегистрировать новый аккаунт', style: TextStyle(fontSize: 17, color: Colors.blue[800]),),
            )
          ],
        ),
      ),
    );
  }
}