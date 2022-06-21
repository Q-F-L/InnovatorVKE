import 'package:flutter/material.dart';
import '../global.dart' as global;

class CreatePage extends StatefulWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  _CreatePage createState() => _CreatePage();
}

class _CreatePage extends State<CreatePage> {
  late TextEditingController _topic;
  late TextEditingController _title;
  final _formKey = GlobalKey<FormState>();

  void initState() {
    super.initState();
    _topic = TextEditingController();
    _title = TextEditingController();
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
                      'Расскажите о предложении',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(32, 86, 146, 1),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Виберите тему и название',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(32, 86, 146, 1),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 20),
                            width: MediaQuery.of(context).size.height * 0.5,
                            child: TextFormField(
                              validator: (value) => _validatorShortInput(value),
                              controller: _topic,
                              decoration: const InputDecoration(
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(90.0)),
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 153, 0, 0),
                                    width: 1.5,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:  BorderRadius.all(
                                      Radius.circular(90.0)),
                                  borderSide:  BorderSide(
                                    color:  Color(0xFF000000),
                                    width: 1.5,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius:  BorderRadius.all(
                                      Radius.circular(90.0)),
                                  borderSide:  BorderSide(
                                    color: Color.fromARGB(255, 153, 0, 0),
                                    width: 1.5,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:  BorderRadius.all(
                                      Radius.circular(90.0)),
                                  borderSide:  BorderSide(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    width: 1.5,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                hintText: 'Тема',
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 20),
                            width: MediaQuery.of(context).size.height * 0.5,
                            child: TextFormField(
                              validator: (value) => _validatorShortInput(value),
                              controller: _title,
                              decoration: const InputDecoration(
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(90.0)),
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 153, 0, 0),
                                    width: 1.5,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:  BorderRadius.all(
                                      Radius.circular(90.0)),
                                  borderSide:  BorderSide(
                                    color:  Color(0xFF000000),
                                    width: 1.5,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius:  BorderRadius.all(
                                      Radius.circular(90.0)),
                                  borderSide:  BorderSide(
                                    color: Color.fromARGB(255, 153, 0, 0),
                                    width: 1.5,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:  BorderRadius.all(
                                      Radius.circular(90.0)),
                                  borderSide:  BorderSide(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    width: 1.5,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                hintText: 'Название',
                              ),
                              keyboardType: TextInputType.name,
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            margin: const EdgeInsets.only(top: 140),
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
                                    global.title = _title.text;
                                    global.topic = _topic.text;
                                    Navigator.pushNamed(
                                        context, '/create_now_page');
                                  }
                                },
                                child: Text(
                                  'Далее',
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

  String? _validatorShortInput(String? value) {
    if (value!.isEmpty) {
      return 'Обязательное поле для заполнения';
    } else {
      return null;
    }
  }
}