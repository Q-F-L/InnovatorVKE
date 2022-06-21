import 'package:flutter/material.dart';
import '../Request/ProjectsConvertJSON.dart';
import '../global.dart' as global;

class CreateWillBePage extends StatefulWidget {
  const CreateWillBePage({Key? key}) : super(key: key);

  @override
  _CreateWillBePage createState() => _CreateWillBePage();
}

class _CreateWillBePage extends State<CreateWillBePage> {
  late TextEditingController _will_description;
  final _formKey = GlobalKey<FormState>();

  void initState() {
    super.initState();
    _will_description = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/menu_page');
                        },
                        child: Image.asset('assets/arrow_back.png')),
                  ),
                  const Expanded(
                    flex: 4,
                    child: Text(
                      'Создать',
                      style: TextStyle(
                          fontSize: 36,
                          color: Color.fromRGBO(32, 86, 146, 1),
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                      flex: 1, child: Image.asset('assets/logo_image.png')),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                child: ListView(
                  children: [
                    const Text(
                      'Расскажите как будет',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(32, 86, 146, 1),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 20),
                            width: MediaQuery.of(context).size.height * 0.5,
                            child: TextFormField(
                              validator: (value) =>
                                  _validatorTextAreaInput(value),
                              controller: _will_description,
                              maxLines: 20,
                              maxLength: 999,
                              minLines: 10,
                              decoration: const InputDecoration(
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 153, 0, 0),
                                    width: 1.5,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:  BorderRadius.all(
                                      Radius.circular(20.0)),
                                  borderSide:  BorderSide(
                                    color:  Color(0xFF000000),
                                    width: 1.5,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius:  BorderRadius.all(
                                      Radius.circular(20.0)),
                                  borderSide:  BorderSide(
                                    color: Color.fromARGB(255, 153, 0, 0),
                                    width: 1.5,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:  BorderRadius.all(
                                      Radius.circular(20.0)),
                                  borderSide:  BorderSide(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    width: 1.5,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color.fromRGBO(255, 255, 255, 1)),
                                  minimumSize: MaterialStateProperty.all(Size(
                                      MediaQuery.of(context).size.width * 0.7,
                                      58)),
                                  shadowColor: MaterialStateProperty.all(
                                      const Color.fromRGBO(1, 1, 1, 1)),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24),
                                    // side: BorderSide(color: Colors.red),
                                  )),
                                  elevation: MaterialStateProperty.all(10),
                                  // padding: MaterialStateProperty.all(EdgeInsets.all(20))
                                ),
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    global.will_description =
                                        _will_description.text;
                                    createProject();
                                    Navigator.pushNamed(context, '/menu_page');
                                  }
                                },
                                child: Text(
                                  'Готово',
                                  style: TextStyle(
                                      color: Colors.blue[900], fontSize: 20),
                                )),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  String? _validatorTextAreaInput(String? value) {
    if (value!.isEmpty) {
      return 'Обязательное поле для заполнения';
    } else {
      return null;
    }
  }
}
