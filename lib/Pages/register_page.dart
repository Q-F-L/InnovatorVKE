import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPage createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  TextEditingController email = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  String error = '';
  final _formKey = GlobalKey<FormState>();

  @override
  void disponse() {
    email.dispose();
    name.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.07,
              right: MediaQuery.of(context).size.width * 0.07),
          children: <Widget>[
            Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    child: Text('${error}', style: TextStyle(color: Colors.red),),
                  ),
                  Container(
                    margin:const EdgeInsets.symmetric(vertical: 20),
                    width: MediaQuery.of(context).size.height * 0.5,
                    child: TextFormField(
                      validator: (value) => _validatorName(value),
                      controller: name,
                      decoration:const InputDecoration(
                        focusedErrorBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(90.0)),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 153, 0, 0),
                            width: 1.5,
                            style: BorderStyle.solid,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius:
                               BorderRadius.all(Radius.circular(90.0)),
                          borderSide:  BorderSide(
                            color:  Color(0xFF000000),
                            width: 1.5,
                            style: BorderStyle.solid,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius:
                               BorderRadius.all(Radius.circular(90.0)),
                          borderSide:  BorderSide(
                            color: Color.fromARGB(255, 153, 0, 0),
                            width: 1.5,
                            style: BorderStyle.solid,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                               BorderRadius.all(Radius.circular(90.0)),
                          borderSide:  BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0),
                            width: 1.5,
                            style: BorderStyle.solid,
                          ),
                        ),
                        hintText: 'Имя',
                      ),
                      keyboardType: TextInputType.name,
                    ),
                  ),
                  Container(
                    margin:const EdgeInsets.symmetric(vertical: 20),
                    width: MediaQuery.of(context).size.height * 0.5,
                    child: TextFormField(
                      validator: (value) => _validatorEmail(value),
                      controller: email,
                      decoration:const InputDecoration(
                        focusedErrorBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(90.0)),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 153, 0, 0),
                            width: 1.5,
                            style: BorderStyle.solid,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius:
                               BorderRadius.all(Radius.circular(90.0)),
                          borderSide:  BorderSide(
                            color:  Color(0xFF000000),
                            width: 1.5,
                            style: BorderStyle.solid,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius:
                               BorderRadius.all(Radius.circular(90.0)),
                          borderSide:  BorderSide(
                            color: Color.fromARGB(255, 153, 0, 0),
                            width: 1.5,
                            style: BorderStyle.solid,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                               BorderRadius.all(Radius.circular(90.0)),
                          borderSide:  BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0),
                            width: 1.5,
                            style: BorderStyle.solid,
                          ),
                        ),
                        hintText: 'Почта',
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  Container(
                    margin:const EdgeInsets.symmetric(vertical: 20),
                    width: MediaQuery.of(context).size.height * 0.5,
                    child: TextFormField(
                      obscureText: true,
                      validator: (value) => _validatorPassword(value),
                      controller: password,
                      decoration: const InputDecoration(
                        focusedErrorBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(90.0)),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 153, 0, 0),
                            width: 1.5,
                            style: BorderStyle.solid,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(90.0)),
                          borderSide: BorderSide(
                            color:Color(0xFF000000),
                            width: 1.5,
                            style: BorderStyle.solid,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(90.0)),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 153, 0, 0),
                            width: 1.5,
                            style: BorderStyle.solid,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(90.0)),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0),
                            width: 1.5,
                            style: BorderStyle.solid,
                          ),
                        ),
                        hintText: 'Пароль',
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.height * 0.5,
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2),
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromRGBO(255, 255, 255, 1)),
                          minimumSize: MaterialStateProperty.all(Size(
                              MediaQuery.of(context).size.width * 0.7, 58)),
                          shadowColor: MaterialStateProperty.all(
                              const Color.fromRGBO(1, 1, 1, 1)),
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                            // side: BorderSide(color: Colors.red),
                          )),
                          elevation: MaterialStateProperty.all(10),
                          // padding: MaterialStateProperty.all(EdgeInsets.all(20))
                        ),
                        onPressed: () {
                          _validator();
                        },
                        child: Text(
                          'Зарегистрироваться',
                          style:
                              TextStyle(color: Colors.blue[900], fontSize: 20),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login_page');
              },
              child: Text(
                'Войти в аккаунт',
                style: TextStyle(fontSize: 17, color: Colors.blue[800]),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _validator() {
    if (_formKey.currentState!.validate()) {
      loadData(name.text, email.text, password.text);
    }
  }

  String? _validatorName(String? value){
    final _nameExp = RegExp(r'^[A-Za-z А-Яа-я]+$');
    if(value!.isEmpty) {
      return 'Введите Ваше имя';
    } else if(!_nameExp.hasMatch(value)) {
      return 'В поле ИМЯ можно вводить только БУКВЫ';
    } else{
      return null;
    }
  }

  String? _validatorEmail(String? value){
    if(value!.isEmpty) {
      return 'Введите Вашу почту';
    } else if(!email.text.contains('@')) {
      return 'Некоректно введен адрес';
    } else{
      return null;
    }
  }

  String? _validatorPassword(String? value){
    if(value!.isEmpty) {
      return 'Введите Ваш пароль';
    } else if(value.length < 8) {
      return 'Пароль должен быть больше или равен 8 символов';
    } else{
      return null;
    }
  }

  Future<http.Response> Register(name, email, password) {
    return http
        .post(Uri.parse('http://didpisdp.beget.tech/api/register'), body: {
      "email": email,
      "name": name,
      'password': password,
    }, headers: {
      'Accept': 'application/json'
    });
  }

  void loadData(email, name, password) async {
    Register(email, name, password)
        .then((response) => {
              if (response.statusCode == 200)
                Navigator.pushNamed(context, '/login_page')
              else
                {
                  error = '$response'
                }
            })
        .catchError((error) {
      debugPrint(error.toString());
    });
  }
}
