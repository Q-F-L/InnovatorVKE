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

  void initState() {
    super.initState();
    _will_description = TextEditingController();
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
                        onTap: (){
                          Navigator.pushNamed(context, '/menu_page');
                        },
                        child: Image.asset('assets/arrow_back.png')
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Text(
                      'Создать',
                      style: TextStyle(
                          fontSize: 36,
                          color: Color.fromRGBO(32, 86, 146, 1),
                          fontWeight: FontWeight.w400
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Image.asset('assets/logo_image.png')
                  ),
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
                      'Расскажите как будет',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(32, 86, 146, 1),
                      ),
                      textAlign: TextAlign.center,
                    ),

                    Form(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 25),
                            width: MediaQuery
                                .of(context)
                                .size
                                .height * 0.5,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Color.fromRGBO(32, 86, 146, 1),width: 2),
                              borderRadius: BorderRadius.circular(20),
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
                              controller: _will_description,
                              maxLines: 20,
                              maxLength: 999,
                              minLines: 10,
                              decoration: InputDecoration(
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 50,
                          ),

                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
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
                                  global.will_description = _will_description.text;
                                  print(global.will_description);
                                  print('object');
                                  createProject();
                                  Navigator.pushNamed(context, '/menu_page');
                                },
                                child: Text(
                                  'Готово',
                                  style: TextStyle(color: Colors.blue[900], fontSize: 20),
                                )
                            ),
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
}