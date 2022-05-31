import 'package:flutter/material.dart';
import '../global.dart' as global;

class CreateNowPage extends StatefulWidget {
  const CreateNowPage({Key? key}) : super(key: key);

  @override
  _CreateNowPage createState() => _CreateNowPage();
}

class _CreateNowPage extends State<CreateNowPage> {
  late TextEditingController _now_description;
  final _formKey = GlobalKey<FormState>();

  void initState() {
    super.initState();
    _now_description = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 30),
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
                  Expanded(
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
                    Text(
                      'Расскажите как сейчас',
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
                            margin: EdgeInsets.symmetric(vertical: 20),
                            width: MediaQuery.of(context).size.height * 0.5,
                            child: TextFormField(
                              validator: (value) =>
                                  _validatorTextAreaInput(value),
                              controller: _now_description,
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
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20.0)),
                                  borderSide: const BorderSide(
                                    color: const Color(0xFF000000),
                                    width: 1.5,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20.0)),
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 153, 0, 0),
                                    width: 1.5,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20.0)),
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    width: 1.5,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 50),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color.fromRGBO(255, 255, 255, 1)),
                                  minimumSize: MaterialStateProperty.all(Size(
                                      MediaQuery.of(context).size.width * 0.7,
                                      58)),
                                  shadowColor: MaterialStateProperty.all(
                                      Color.fromRGBO(1, 1, 1, 1)),
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
                                    global.now_description =
                                        _now_description.text;
                                    print(global.now_description);
                                    Navigator.pushNamed(
                                        context, '/create_after_page');
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

  String? _validatorTextAreaInput(String? value) {
    if (value!.isEmpty) {
      return 'Обязательное поле для заполнения';
    } else {
      return null;
    }
  }
}
